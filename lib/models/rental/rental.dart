import 'package:bikes_rental_client/models/bikes/bike.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'rental.freezed.dart';
part 'rental.g.dart';

@freezed
abstract class Rental with _$Rental{

  const factory Rental(
  @JsonKey(name: 'id') int id,
  @JsonKey(name: 'bike') Bike bike,
  @JsonKey(name: 'status') String status,
  @JsonKey(name: 'quantity') int quantity,
  @JsonKey(name: 'amount') String amount,
  // in the api period is returned as a string
  @JsonKey(name: 'period') String period,

) = _Rental;
factory Rental.fromJson(Map<String, dynamic> json) => _$RentalFromJson(json);
}