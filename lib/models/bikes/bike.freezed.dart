// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bike.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Bike _$BikeFromJson(Map<String, dynamic> json) {
  return _Bike.fromJson(json);
}

/// @nodoc
class _$BikeTearOff {
  const _$BikeTearOff();

// ignore: unused_element
  _Bike call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'owner') String owner,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'height') double height,
      @JsonKey(name: 'front_light') String frontLight,
      @JsonKey(name: 'rear_light') String rearLight,
      @JsonKey(name: 'speed_sensor') String speedSensor,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      @JsonKey(name: 'photos') List<Photo> photo,
      double distance}) {
    return _Bike(
      id: id,
      price: price,
      owner: owner,
      brand: brand,
      description: description,
      quantity: quantity,
      height: height,
      frontLight: frontLight,
      rearLight: rearLight,
      speedSensor: speedSensor,
      latitude: latitude,
      longitude: longitude,
      photo: photo,
      distance: distance,
    );
  }

// ignore: unused_element
  Bike fromJson(Map<String, Object> json) {
    return Bike.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Bike = _$BikeTearOff();

/// @nodoc
mixin _$Bike {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'owner')
  String get owner;
  @JsonKey(name: 'brand')
  String get brand;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(name: 'quantity')
  int get quantity;
  @JsonKey(name: 'height')
  double get height;
  @JsonKey(name: 'front_light')
  String get frontLight;
  @JsonKey(name: 'rear_light')
  String get rearLight;
  @JsonKey(name: 'speed_sensor')
  String get speedSensor;
  @JsonKey(name: 'latitude')
  String get latitude;
  @JsonKey(name: 'longitude')
  String get longitude;
  @JsonKey(name: 'photos')
  List<Photo> get photo;
  double get distance;

  Map<String, dynamic> toJson();
  $BikeCopyWith<Bike> get copyWith;
}

/// @nodoc
abstract class $BikeCopyWith<$Res> {
  factory $BikeCopyWith(Bike value, $Res Function(Bike) then) =
      _$BikeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'owner') String owner,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'height') double height,
      @JsonKey(name: 'front_light') String frontLight,
      @JsonKey(name: 'rear_light') String rearLight,
      @JsonKey(name: 'speed_sensor') String speedSensor,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      @JsonKey(name: 'photos') List<Photo> photo,
      double distance});
}

/// @nodoc
class _$BikeCopyWithImpl<$Res> implements $BikeCopyWith<$Res> {
  _$BikeCopyWithImpl(this._value, this._then);

  final Bike _value;
  // ignore: unused_field
  final $Res Function(Bike) _then;

  @override
  $Res call({
    Object id = freezed,
    Object price = freezed,
    Object owner = freezed,
    Object brand = freezed,
    Object description = freezed,
    Object quantity = freezed,
    Object height = freezed,
    Object frontLight = freezed,
    Object rearLight = freezed,
    Object speedSensor = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object photo = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      price: price == freezed ? _value.price : price as String,
      owner: owner == freezed ? _value.owner : owner as String,
      brand: brand == freezed ? _value.brand : brand as String,
      description:
          description == freezed ? _value.description : description as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      height: height == freezed ? _value.height : height as double,
      frontLight:
          frontLight == freezed ? _value.frontLight : frontLight as String,
      rearLight: rearLight == freezed ? _value.rearLight : rearLight as String,
      speedSensor:
          speedSensor == freezed ? _value.speedSensor : speedSensor as String,
      latitude: latitude == freezed ? _value.latitude : latitude as String,
      longitude: longitude == freezed ? _value.longitude : longitude as String,
      photo: photo == freezed ? _value.photo : photo as List<Photo>,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

/// @nodoc
abstract class _$BikeCopyWith<$Res> implements $BikeCopyWith<$Res> {
  factory _$BikeCopyWith(_Bike value, $Res Function(_Bike) then) =
      __$BikeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'owner') String owner,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'height') double height,
      @JsonKey(name: 'front_light') String frontLight,
      @JsonKey(name: 'rear_light') String rearLight,
      @JsonKey(name: 'speed_sensor') String speedSensor,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      @JsonKey(name: 'photos') List<Photo> photo,
      double distance});
}

/// @nodoc
class __$BikeCopyWithImpl<$Res> extends _$BikeCopyWithImpl<$Res>
    implements _$BikeCopyWith<$Res> {
  __$BikeCopyWithImpl(_Bike _value, $Res Function(_Bike) _then)
      : super(_value, (v) => _then(v as _Bike));

  @override
  _Bike get _value => super._value as _Bike;

  @override
  $Res call({
    Object id = freezed,
    Object price = freezed,
    Object owner = freezed,
    Object brand = freezed,
    Object description = freezed,
    Object quantity = freezed,
    Object height = freezed,
    Object frontLight = freezed,
    Object rearLight = freezed,
    Object speedSensor = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object photo = freezed,
    Object distance = freezed,
  }) {
    return _then(_Bike(
      id: id == freezed ? _value.id : id as int,
      price: price == freezed ? _value.price : price as String,
      owner: owner == freezed ? _value.owner : owner as String,
      brand: brand == freezed ? _value.brand : brand as String,
      description:
          description == freezed ? _value.description : description as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      height: height == freezed ? _value.height : height as double,
      frontLight:
          frontLight == freezed ? _value.frontLight : frontLight as String,
      rearLight: rearLight == freezed ? _value.rearLight : rearLight as String,
      speedSensor:
          speedSensor == freezed ? _value.speedSensor : speedSensor as String,
      latitude: latitude == freezed ? _value.latitude : latitude as String,
      longitude: longitude == freezed ? _value.longitude : longitude as String,
      photo: photo == freezed ? _value.photo : photo as List<Photo>,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Bike with DiagnosticableTreeMixin implements _Bike {
  const _$_Bike(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'front_light') this.frontLight,
      @JsonKey(name: 'rear_light') this.rearLight,
      @JsonKey(name: 'speed_sensor') this.speedSensor,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'photos') this.photo,
      this.distance});

  factory _$_Bike.fromJson(Map<String, dynamic> json) =>
      _$_$_BikeFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'owner')
  final String owner;
  @override
  @JsonKey(name: 'brand')
  final String brand;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'height')
  final double height;
  @override
  @JsonKey(name: 'front_light')
  final String frontLight;
  @override
  @JsonKey(name: 'rear_light')
  final String rearLight;
  @override
  @JsonKey(name: 'speed_sensor')
  final String speedSensor;
  @override
  @JsonKey(name: 'latitude')
  final String latitude;
  @override
  @JsonKey(name: 'longitude')
  final String longitude;
  @override
  @JsonKey(name: 'photos')
  final List<Photo> photo;
  @override
  final double distance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bike(id: $id, price: $price, owner: $owner, brand: $brand, description: $description, quantity: $quantity, height: $height, frontLight: $frontLight, rearLight: $rearLight, speedSensor: $speedSensor, latitude: $latitude, longitude: $longitude, photo: $photo, distance: $distance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bike'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('frontLight', frontLight))
      ..add(DiagnosticsProperty('rearLight', rearLight))
      ..add(DiagnosticsProperty('speedSensor', speedSensor))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('distance', distance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bike &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.frontLight, frontLight) ||
                const DeepCollectionEquality()
                    .equals(other.frontLight, frontLight)) &&
            (identical(other.rearLight, rearLight) ||
                const DeepCollectionEquality()
                    .equals(other.rearLight, rearLight)) &&
            (identical(other.speedSensor, speedSensor) ||
                const DeepCollectionEquality()
                    .equals(other.speedSensor, speedSensor)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(frontLight) ^
      const DeepCollectionEquality().hash(rearLight) ^
      const DeepCollectionEquality().hash(speedSensor) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(distance);

  @override
  _$BikeCopyWith<_Bike> get copyWith =>
      __$BikeCopyWithImpl<_Bike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BikeToJson(this);
  }
}

abstract class _Bike implements Bike {
  const factory _Bike(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'owner') String owner,
      @JsonKey(name: 'brand') String brand,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'height') double height,
      @JsonKey(name: 'front_light') String frontLight,
      @JsonKey(name: 'rear_light') String rearLight,
      @JsonKey(name: 'speed_sensor') String speedSensor,
      @JsonKey(name: 'latitude') String latitude,
      @JsonKey(name: 'longitude') String longitude,
      @JsonKey(name: 'photos') List<Photo> photo,
      double distance}) = _$_Bike;

  factory _Bike.fromJson(Map<String, dynamic> json) = _$_Bike.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'owner')
  String get owner;
  @override
  @JsonKey(name: 'brand')
  String get brand;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'height')
  double get height;
  @override
  @JsonKey(name: 'front_light')
  String get frontLight;
  @override
  @JsonKey(name: 'rear_light')
  String get rearLight;
  @override
  @JsonKey(name: 'speed_sensor')
  String get speedSensor;
  @override
  @JsonKey(name: 'latitude')
  String get latitude;
  @override
  @JsonKey(name: 'longitude')
  String get longitude;
  @override
  @JsonKey(name: 'photos')
  List<Photo> get photo;
  @override
  double get distance;
  @override
  _$BikeCopyWith<_Bike> get copyWith;
}
