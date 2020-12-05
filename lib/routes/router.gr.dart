// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/bike_list.dart';
import '../pages/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String bikeListPage = '/bike-list-page';
  static const all = <String>{
    splashPage,
    bikeListPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.bikeListPage, page: BikeListPage),
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
  };
}
