import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio();
  @singleton
  Geolocator get geolocator => Geolocator();
  Location get location => Location();
}
