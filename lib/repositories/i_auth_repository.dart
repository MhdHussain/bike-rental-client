import 'package:bikes_rental_client/failures/failures.dart';
import 'package:bikes_rental_client/models/auth/auth.dart';
import 'package:dartz/dartz.dart';


abstract class IAuthRepository {
  Future<Either<Failure, Auth>> login(String email, String password);
  Future<Either<Failure, Auth>> signup(String name , String email, String password , String phoneNumber);
  void logout();
  Future<bool> isLoggedIn();
 
}
