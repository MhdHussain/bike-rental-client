import 'package:bikes_rental_client/failures/failures.dart';
import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:dartz/dartz.dart';

abstract class IBikeRepository {
  Future<Either<Failure , List<Bike>>> getNearbyBikes();
}
