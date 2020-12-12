// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rental _$_$_RentalFromJson(Map<String, dynamic> json) {
  return _$_Rental(
    json['id'] as int,
    json['bike'] == null
        ? null
        : Bike.fromJson(json['bike'] as Map<String, dynamic>),
    json['status'] as String,
    json['quantity'] as int,
    json['amount'] as String,
    json['period'] as String,
  );
}

Map<String, dynamic> _$_$_RentalToJson(_$_Rental instance) => <String, dynamic>{
      'id': instance.id,
      'bike': instance.bike,
      'status': instance.status,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'period': instance.period,
    };
