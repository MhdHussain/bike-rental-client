import 'package:bikes_rental_client/failures/failures.dart';
import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class IBikeRepository {
  Future<Either<Failure , List<Bike>>> getNearbyBikes();
  Future<Either<Failure , Response>> rentBike(Bike bike , int count , int period);
}
