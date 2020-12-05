import 'package:latlong/latlong.dart';

class DistanceCalculator {
  static double calculate(double currentLat, double currentLng,
      double destinationLat, double destinationLng) {
    final Distance distance = new Distance();
    return distance.as(LengthUnit.Kilometer, new LatLng(currentLat, currentLng),
        new LatLng(destinationLat, destinationLng));
  }
}
