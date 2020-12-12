import 'package:bikes_rental_client/failures/failures.dart';
import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:bikes_rental_client/models/rental/rental.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class IBikeRepository {
  Future<Either<Failure , List<dynamic>>> getNearbyBikes();
  Future<Either<Failure , Response>> rentBike(Bike bike , int count , int period);
  Future<Either<Failure , List<dynamic>>> getRentedBikes();
  Future<Either<Failure , Response>> returnBike(Rental rental);
}
