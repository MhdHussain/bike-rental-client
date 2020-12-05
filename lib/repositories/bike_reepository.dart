import 'package:bikes_rental_client/failures/failures.dart';
import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bikes_rental_client/repositories/i_bike_repository.dart';
import 'package:bikes_rental_client/utils/connection_checker.dart';
import 'package:bikes_rental_client/utils/distance_calculator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart' hide LocationAccuracy;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

@LazySingleton(as: IBikeRepository)
class BikeRepository implements IBikeRepository {
  final Geolocator geolocator;
  final Dio dio;
  final Location location;
  SharedPreferences prefs;

  BikeRepository({this.geolocator, this.dio, this.location}) {
    initHeaders();
  }

  Future<void> initHeaders() async {
    dio.options.headers['content-type'] = 'application/json';
    dio.options.headers["accept"] = "application/json";

    prefs = await SharedPreferences.getInstance();

    if(prefs.getString(Constants.ACCESS_TOKEN_KEY) != null){
      dio.options.headers["authorization"] =
        "Bearer " + prefs.getString(Constants.ACCESS_TOKEN_KEY);
    }
    
  }

  @override
  Future<Either<Failure, List<Bike>>> getNearbyBikes() async {
    // check if connected
    bool isConnected = await Checker.connectionStatus;
    if (!isConnected) {
      return left(Failure.requestTimeOut(message: "connection_error"));
    }

    // check if location is enabled or not,
    // if not enabled request service
    // if rejected return a failure
    bool isLocationServiceEnabled = await geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      isLocationServiceEnabled = await location.requestService();

      if (!isLocationServiceEnabled) {
        return left(Failure.locationServiceDisabled(
            message: 'location_service_disabled'));
      }
    }

    Position position = await geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    //get current location
    double currentLatitude = position.latitude;
    double currentLongitude = position.longitude;

    try {
      Response<List<dynamic>> response =
          await dio.post(Constants.API_URL + 'client/nearby', data: {
        'latitude': currentLatitude,
        'longitude': currentLongitude,
      });

      final result = response.data;
      final output = result.map((bike) {
        double distance = DistanceCalculator.calculate(
            currentLatitude,
            currentLongitude,
            bike['latitude'].toDouble(),
            bike['longitude'].toDouble());

        bike['distance'] = distance;

        return Bike.fromJson(bike as Map<String, dynamic>);
      }).toList();

      return right(output);
    } on DioError catch (error) {
      print(error);
      return left(Failure.requestTimeOut(message: "server_error"));
    }
  }
}
