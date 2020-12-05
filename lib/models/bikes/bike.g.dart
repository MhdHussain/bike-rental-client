// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bike.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bike _$_$_BikeFromJson(Map<String, dynamic> json) {
  return _$_Bike(
    id: json['id'] as int,
    price: json['price'] as String,
    owner: json['owner'] as String,
    brand: json['brand'] as String,
    description: json['description'] as String,
    quantity: json['quantity'] as int,
    height: (json['height'] as num)?.toDouble(),
    frontLight: json['front_light'] as String,
    rearLight: json['rear_light'] as String,
    speedSensor: json['speed_sensor'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    photo: (json['photos'] as List)
        ?.map(
            (e) => e == null ? null : Photo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    distance: (json['distance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_BikeToJson(_$_Bike instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'owner': instance.owner,
      'brand': instance.brand,
      'description': instance.description,
      'quantity': instance.quantity,
      'height': instance.height,
      'front_light': instance.frontLight,
      'rear_light': instance.rearLight,
      'speed_sensor': instance.speedSensor,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'photos': instance.photo,
      'distance': instance.distance,
    };
