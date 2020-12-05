import 'package:bikes_rental_client/models/photos/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bike.freezed.dart';
part 'bike.g.dart';

@freezed
abstract class Bike with _$Bike{

  const factory Bike(
       {
          @JsonKey(name: 'id') int id,
        @JsonKey(name: 'price') String price,
        @JsonKey(name: 'owner') String owner,
        @JsonKey(name: 'brand') String brand,
        @JsonKey(name: 'description') String description,
        @JsonKey(name: 'quantity') int quantity,
        @JsonKey(name: 'height') double height,
        @JsonKey(name: 'front_light') String frontLight,
        @JsonKey(name: 'rear_light') String rearLight,
        @JsonKey(name: 'speed_sensor') String speedSensor,
        @JsonKey(name: 'latitude') double latitude,
        @JsonKey(name: 'longitude') double longitude,
        @JsonKey(name: 'photos') List<Photo> photo,
        double distance
       }
  ) = _Bike;
  factory Bike.fromJson(Map<String, dynamic> json) => _$BikeFromJson(json);
}