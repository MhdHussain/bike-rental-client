// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../models/bikes/bike.dart';
import '../pages/bike_detail.dart';
import '../pages/bike_list.dart';
import '../pages/login.dart';
import '../pages/signup.dart';
import '../pages/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String bikeListPage = '/bike-list-page';
  static const String bikeDetail = '/bike-detail';
  static const String loginPage = '/login-page';
  static const String signupPage = '/signup-page';
  static const all = <String>{
    splashPage,
    bikeListPage,
    bikeDetail,
    loginPage,
    signupPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.bikeListPage, page: BikeListPage),
    RouteDef(Routes.bikeDetail, page: BikeDetail),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.signupPage, page: SignupPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    BikeListPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BikeListPage(),
        settings: data,
      );
    },
    BikeDetail: (data) {
      final args = data.getArgs<BikeDetailArguments>(
        orElse: () => BikeDetailArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BikeDetail(
          key: args.key,
          bike: args.bike,
          bgColor: args.bgColor,
        ),
        settings: data,
      );
    },
    LoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginPage(),
        settings: data,
      );
    },
    SignupPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// BikeDetail arguments holder class
class BikeDetailArguments {
  final Key key;
  final Bike bike;
  final Color bgColor;
  BikeDetailArguments({this.key, this.bike, this.bgColor});
}
