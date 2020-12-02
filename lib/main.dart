import 'package:bikes_rental_client/pages/bike_detail.dart';
import 'package:bikes_rental_client/pages/bike_list.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tienda de coches",
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => BikeListPage(),
        "detail": (BuildContext context) => BikeDetail()
      },
    );
  }
}
