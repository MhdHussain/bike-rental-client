// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rental.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Rental _$RentalFromJson(Map<String, dynamic> json) {
  return _Rental.fromJson(json);
}

/// @nodoc
class _$RentalTearOff {
  const _$RentalTearOff();

// ignore: unused_element
  _Rental call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'bike') Bike bike,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'period') String period) {
    return _Rental(
      id,
      bike,
      status,
      quantity,
      amount,
      period,
    );
  }

// ignore: unused_element
  Rental fromJson(Map<String, Object> json) {
    return Rental.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Rental = _$RentalTearOff();

/// @nodoc
mixin _$Rental {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'bike')
  Bike get bike;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'quantity')
  int get quantity;
  @JsonKey(name: 'amount')
  String get amount; // in the api period is returned as a string
  @JsonKey(name: 'period')
  String get period;

  Map<String, dynamic> toJson();
  $RentalCopyWith<Rental> get copyWith;
}

/// @nodoc
abstract class $RentalCopyWith<$Res> {
  factory $RentalCopyWith(Rental value, $Res Function(Rental) then) =
      _$RentalCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'bike') Bike bike,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'period') String period});

  $BikeCopyWith<$Res> get bike;
}

/// @nodoc
class _$RentalCopyWithImpl<$Res> implements $RentalCopyWith<$Res> {
  _$RentalCopyWithImpl(this._value, this._then);

  final Rental _value;
  // ignore: unused_field
  final $Res Function(Rental) _then;

  @override
  $Res call({
    Object id = freezed,
    Object bike = freezed,
    Object status = freezed,
    Object quantity = freezed,
    Object amount = freezed,
    Object period = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      bike: bike == freezed ? _value.bike : bike as Bike,
      status: status == freezed ? _value.status : status as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      amount: amount == freezed ? _value.amount : amount as String,
      period: period == freezed ? _value.period : period as String,
    ));
  }

  @override
  $BikeCopyWith<$Res> get bike {
    if (_value.bike == null) {
      return null;
    }
    return $BikeCopyWith<$Res>(_value.bike, (value) {
      return _then(_value.copyWith(bike: value));
    });
  }
}

/// @nodoc
abstract class _$RentalCopyWith<$Res> implements $RentalCopyWith<$Res> {
  factory _$RentalCopyWith(_Rental value, $Res Function(_Rental) then) =
      __$RentalCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'bike') Bike bike,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'period') String period});

  @override
  $BikeCopyWith<$Res> get bike;
}

/// @nodoc
class __$RentalCopyWithImpl<$Res> extends _$RentalCopyWithImpl<$Res>
    implements _$RentalCopyWith<$Res> {
  __$RentalCopyWithImpl(_Rental _value, $Res Function(_Rental) _then)
      : super(_value, (v) => _then(v as _Rental));

  @override
  _Rental get _value => super._value as _Rental;

  @override
  $Res call({
    Object id = freezed,
    Object bike = freezed,
    Object status = freezed,
    Object quantity = freezed,
    Object amount = freezed,
    Object period = freezed,
  }) {
    return _then(_Rental(
      id == freezed ? _value.id : id as int,
      bike == freezed ? _value.bike : bike as Bike,
      status == freezed ? _value.status : status as String,
      quantity == freezed ? _value.quantity : quantity as int,
      amount == freezed ? _value.amount : amount as String,
      period == freezed ? _value.period : period as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Rental with DiagnosticableTreeMixin implements _Rental {
  const _$_Rental(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'bike') this.bike,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'period') this.period)
      : assert(id != null),
        assert(bike != null),
        assert(status != null),
        assert(quantity != null),
        assert(amount != null),
        assert(period != null);

  factory _$_Rental.fromJson(Map<String, dynamic> json) =>
      _$_$_RentalFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'bike')
  final Bike bike;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'amount')
  final String amount;
  @override // in the api period is returned as a string
  @JsonKey(name: 'period')
  final String period;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rental(id: $id, bike: $bike, status: $status, quantity: $quantity, amount: $amount, period: $period)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rental'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('bike', bike))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('period', period));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rental &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.bike, bike) ||
                const DeepCollectionEquality().equals(other.bike, bike)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(bike) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(period);

  @override
  _$RentalCopyWith<_Rental> get copyWith =>
      __$RentalCopyWithImpl<_Rental>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RentalToJson(this);
  }
}

abstract class _Rental implements Rental {
  const factory _Rental(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'bike') Bike bike,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'period') String period) = _$_Rental;

  factory _Rental.fromJson(Map<String, dynamic> json) = _$_Rental.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'bike')
  Bike get bike;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'amount')
  String get amount;
  @override // in the api period is returned as a string
  @JsonKey(name: 'period')
  String get period;
  @override
  _$RentalCopyWith<_Rental> get copyWith;
}
