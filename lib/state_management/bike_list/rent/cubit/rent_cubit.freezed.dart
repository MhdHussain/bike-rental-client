// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rent_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RentStateTearOff {
  const _$RentStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Renting renting() {
    return const _Renting();
  }

// ignore: unused_element
  _Success success({Bike bike}) {
    return _Success(
      bike: bike,
    );
  }

// ignore: unused_element
  _Failure failure({String message}) {
    return _Failure(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RentState = _$RentStateTearOff();

/// @nodoc
mixin _$RentState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult renting(),
    @required TResult success(Bike bike),
    @required TResult failure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult renting(),
    TResult success(Bike bike),
    TResult failure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult renting(_Renting value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult renting(_Renting value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RentStateCopyWith<$Res> {
  factory $RentStateCopyWith(RentState value, $Res Function(RentState) then) =
      _$RentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RentStateCopyWithImpl<$Res> implements $RentStateCopyWith<$Res> {
  _$RentStateCopyWithImpl(this._value, this._then);

  final RentState _value;
  // ignore: unused_field
  final $Res Function(RentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RentStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult renting(),
    @required TResult success(Bike bike),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult renting(),
    TResult success(Bike bike),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult renting(_Renting value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult renting(_Renting value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$RentingCopyWith<$Res> {
  factory _$RentingCopyWith(_Renting value, $Res Function(_Renting) then) =
      __$RentingCopyWithImpl<$Res>;
}

/// @nodoc
class __$RentingCopyWithImpl<$Res> extends _$RentStateCopyWithImpl<$Res>
    implements _$RentingCopyWith<$Res> {
  __$RentingCopyWithImpl(_Renting _value, $Res Function(_Renting) _then)
      : super(_value, (v) => _then(v as _Renting));

  @override
  _Renting get _value => super._value as _Renting;
}

/// @nodoc
class _$_Renting implements _Renting {
  const _$_Renting();

  @override
  String toString() {
    return 'RentState.renting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Renting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult renting(),
    @required TResult success(Bike bike),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return renting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult renting(),
    TResult success(Bike bike),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (renting != null) {
      return renting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult renting(_Renting value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return renting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult renting(_Renting value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (renting != null) {
      return renting(this);
    }
    return orElse();
  }
}

abstract class _Renting implements RentState {
  const factory _Renting() = _$_Renting;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({Bike bike});

  $BikeCopyWith<$Res> get bike;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$RentStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object bike = freezed,
  }) {
    return _then(_Success(
      bike: bike == freezed ? _value.bike : bike as Bike,
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
class _$_Success implements _Success {
  const _$_Success({this.bike});

  @override
  final Bike bike;

  @override
  String toString() {
    return 'RentState.success(bike: $bike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.bike, bike) ||
                const DeepCollectionEquality().equals(other.bike, bike)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bike);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult renting(),
    @required TResult success(Bike bike),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return success(bike);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult renting(),
    TResult success(Bike bike),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(bike);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult renting(_Renting value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult renting(_Renting value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RentState {
  const factory _Success({Bike bike}) = _$_Success;

  Bike get bike;
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RentStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Failure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RentState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult renting(),
    @required TResult success(Bike bike),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult renting(),
    TResult success(Bike bike),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult renting(_Renting value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(renting != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult renting(_Renting value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RentState {
  const factory _Failure({String message}) = _$_Failure;

  String get message;
  _$FailureCopyWith<_Failure> get copyWith;
}
