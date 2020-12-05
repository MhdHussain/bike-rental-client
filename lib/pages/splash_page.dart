import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bikes_rental_client/routes/router.gr.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer _timer;
  @override
  void initState() {
    _timer = new Timer(const Duration(milliseconds: 400), () {
      print("executed");
      ExtendedNavigator.of(context)
          .pushAndRemoveUntil(Routes.bikeListPage, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
