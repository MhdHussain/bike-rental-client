

import 'package:bikes_rental_client/models/auth/auth.dart';
import 'package:bikes_rental_client/failures/failures.dart';
import 'package:bikes_rental_client/repositories/i_auth_repository.dart';
import 'package:bikes_rental_client/utils/connection_checker.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

@LazySingleton(as: IAuthRepository)
class AuthJwtRepository implements IAuthRepository{

  final Dio dio;
  const AuthJwtRepository({this.dio});

  
  @override
  Future<bool> isLoggedIn() async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString(Constants.ACCESS_TOKEN_KEY);
    

    bool authenticated = token != null;
   
    return authenticated;
  }

  @override
  Future<Either<Failure, Auth>> login(String email, String password) async {
   
       // check if connected to the internet
    bool isConnected = await Checker.connectionStatus;
    if (!isConnected) {
      return left(Failure.requestTimeOut(message: "connection_error"));
    }

    FormData formData = new FormData.fromMap({
      "email": email,
      "password": password,
    });

    // setting the headers
    dio.options.headers['content-type'] = 'application/json';
    dio.options.headers["accept"] = "application/json";

    try{
      Response response = await dio.post(Constants.AUTH_URL, data: formData);

      final result = response.data;

      Auth auth = Auth.fromJson(result);

      return right(auth);
    } on DioError catch(error){
      if (error.response == null || error.response.statusCode == 502) {
        return left(Failure.requestTimeOut(message: "server_error"));
      }
      if (error.response.statusCode == 404) {
        return left(Failure.wrongAuthCredintials(message: "wrong_credintials"));
      } else if (error.response.statusCode == 403) {
        return left(Failure.userDisabled(message: "user_disabled"));
      }else if (error.response.statusCode == 401) {
        return left(Failure.wrongAuthCredintials(message: "not_authorized"));
      }
    }

  }

  @override
  void logout() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(Constants.ACCESS_TOKEN_KEY);
  }

}