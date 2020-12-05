import 'package:auto_route/auto_route_annotations.dart';
import 'package:bikes_rental_client/pages/bike_list.dart';
import 'package:bikes_rental_client/pages/splash_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: SplashPage , initial: true),
  MaterialRoute(page: BikeListPage ),
])
class $Router {}
