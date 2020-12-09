// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  RequestTimeOut<T> requestTimeOut<T>({@required String message}) {
    return RequestTimeOut<T>(
      message: message,
    );
  }

// ignore: unused_element
  WrongAuthCredintials<T> wrongAuthCredintials<T>({@required String message}) {
    return WrongAuthCredintials<T>(
      message: message,
    );
  }

// ignore: unused_element
  EmailAlreadyInUse<T> emailAlreadyInUse<T>({@required String message}) {
    return EmailAlreadyInUse<T>(
      message: message,
    );
  }

// ignore: unused_element
  UserDisabled<T> userDisabled<T>({@required String message}) {
    return UserDisabled<T>(
      message: message,
    );
  }

// ignore: unused_element
  LocationError<T> locationError<T>({@required String message}) {
    return LocationError<T>(
      message: message,
    );
  }

// ignore: unused_element
  LocationServiceDisabled<T> locationServiceDisabled<T>(
      {@required String message}) {
    return LocationServiceDisabled<T>(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure<T> {
  String get message;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  });

  $FailureCopyWith<T, Failure<T>> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure<T> _value;
  // ignore: unused_field
  final $Res Function(Failure<T>) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class $RequestTimeOutCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory $RequestTimeOutCopyWith(
          RequestTimeOut<T> value, $Res Function(RequestTimeOut<T>) then) =
      _$RequestTimeOutCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$RequestTimeOutCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $RequestTimeOutCopyWith<T, $Res> {
  _$RequestTimeOutCopyWithImpl(
      RequestTimeOut<T> _value, $Res Function(RequestTimeOut<T>) _then)
      : super(_value, (v) => _then(v as RequestTimeOut<T>));

  @override
  RequestTimeOut<T> get _value => super._value as RequestTimeOut<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(RequestTimeOut<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$RequestTimeOut<T> implements RequestTimeOut<T> {
  const _$RequestTimeOut({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure<$T>.requestTimeOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestTimeOut<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $RequestTimeOutCopyWith<T, RequestTimeOut<T>> get copyWith =>
      _$RequestTimeOutCopyWithImpl<T, RequestTimeOut<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return requestTimeOut(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeOut != null) {
      return requestTimeOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return requestTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeOut != null) {
      return requestTimeOut(this);
    }
    return orElse();
  }
}

abstract class RequestTimeOut<T> implements Failure<T> {
  const factory RequestTimeOut({@required String message}) =
      _$RequestTimeOut<T>;

  @override
  String get message;
  @override
  $RequestTimeOutCopyWith<T, RequestTimeOut<T>> get copyWith;
}

/// @nodoc
abstract class $WrongAuthCredintialsCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory $WrongAuthCredintialsCopyWith(WrongAuthCredintials<T> value,
          $Res Function(WrongAuthCredintials<T>) then) =
      _$WrongAuthCredintialsCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$WrongAuthCredintialsCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $WrongAuthCredintialsCopyWith<T, $Res> {
  _$WrongAuthCredintialsCopyWithImpl(WrongAuthCredintials<T> _value,
      $Res Function(WrongAuthCredintials<T>) _then)
      : super(_value, (v) => _then(v as WrongAuthCredintials<T>));

  @override
  WrongAuthCredintials<T> get _value => super._value as WrongAuthCredintials<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(WrongAuthCredintials<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$WrongAuthCredintials<T> implements WrongAuthCredintials<T> {
  const _$WrongAuthCredintials({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure<$T>.wrongAuthCredintials(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WrongAuthCredintials<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $WrongAuthCredintialsCopyWith<T, WrongAuthCredintials<T>> get copyWith =>
      _$WrongAuthCredintialsCopyWithImpl<T, WrongAuthCredintials<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return wrongAuthCredintials(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wrongAuthCredintials != null) {
      return wrongAuthCredintials(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return wrongAuthCredintials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (wrongAuthCredintials != null) {
      return wrongAuthCredintials(this);
    }
    return orElse();
  }
}

abstract class WrongAuthCredintials<T> implements Failure<T> {
  const factory WrongAuthCredintials({@required String message}) =
      _$WrongAuthCredintials<T>;

  @override
  String get message;
  @override
  $WrongAuthCredintialsCopyWith<T, WrongAuthCredintials<T>> get copyWith;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory $EmailAlreadyInUseCopyWith(EmailAlreadyInUse<T> value,
          $Res Function(EmailAlreadyInUse<T>) then) =
      _$EmailAlreadyInUseCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $EmailAlreadyInUseCopyWith<T, $Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse<T> _value, $Res Function(EmailAlreadyInUse<T>) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse<T>));

  @override
  EmailAlreadyInUse<T> get _value => super._value as EmailAlreadyInUse<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(EmailAlreadyInUse<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$EmailAlreadyInUse<T> implements EmailAlreadyInUse<T> {
  const _$EmailAlreadyInUse({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure<$T>.emailAlreadyInUse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailAlreadyInUse<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $EmailAlreadyInUseCopyWith<T, EmailAlreadyInUse<T>> get copyWith =>
      _$EmailAlreadyInUseCopyWithImpl<T, EmailAlreadyInUse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return emailAlreadyInUse(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse<T> implements Failure<T> {
  const factory EmailAlreadyInUse({@required String message}) =
      _$EmailAlreadyInUse<T>;

  @override
  String get message;
  @override
  $EmailAlreadyInUseCopyWith<T, EmailAlreadyInUse<T>> get copyWith;
}

/// @nodoc
abstract class $UserDisabledCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory $UserDisabledCopyWith(
          UserDisabled<T> value, $Res Function(UserDisabled<T>) then) =
      _$UserDisabledCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$UserDisabledCopyWithImpl<T, $Res> extends _$FailureCopyWithImpl<T, $Res>
    implements $UserDisabledCopyWith<T, $Res> {
  _$UserDisabledCopyWithImpl(
      UserDisabled<T> _value, $Res Function(UserDisabled<T>) _then)
      : super(_value, (v) => _then(v as UserDisabled<T>));

  @override
  UserDisabled<T> get _value => super._value as UserDisabled<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UserDisabled<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UserDisabled<T> implements UserDisabled<T> {
  const _$UserDisabled({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure<$T>.userDisabled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDisabled<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UserDisabledCopyWith<T, UserDisabled<T>> get copyWith =>
      _$UserDisabledCopyWithImpl<T, UserDisabled<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return userDisabled(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled<T> implements Failure<T> {
  const factory UserDisabled({@required String message}) = _$UserDisabled<T>;

  @override
  String get message;
  @override
  $UserDisabledCopyWith<T, UserDisabled<T>> get copyWith;
}

/// @nodoc
abstract class $LocationErrorCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory $LocationErrorCopyWith(
          LocationError<T> value, $Res Function(LocationError<T>) then) =
      _$LocationErrorCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LocationErrorCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $LocationErrorCopyWith<T, $Res> {
  _$LocationErrorCopyWithImpl(
      LocationError<T> _value, $Res Function(LocationError<T>) _then)
      : super(_value, (v) => _then(v as LocationError<T>));

  @override
  LocationError<T> get _value => super._value as LocationError<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LocationError<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$LocationError<T> implements LocationError<T> {
  const _$LocationError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure<$T>.locationError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationError<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $LocationErrorCopyWith<T, LocationError<T>> get copyWith =>
      _$LocationErrorCopyWithImpl<T, LocationError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return locationError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationError != null) {
      return locationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return locationError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationError != null) {
      return locationError(this);
    }
    return orElse();
  }
}

abstract class LocationError<T> implements Failure<T> {
  const factory LocationError({@required String message}) = _$LocationError<T>;

  @override
  String get message;
  @override
  $LocationErrorCopyWith<T, LocationError<T>> get copyWith;
}

/// @nodoc
abstract class $LocationServiceDisabledCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory $LocationServiceDisabledCopyWith(LocationServiceDisabled<T> value,
          $Res Function(LocationServiceDisabled<T>) then) =
      _$LocationServiceDisabledCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$LocationServiceDisabledCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $LocationServiceDisabledCopyWith<T, $Res> {
  _$LocationServiceDisabledCopyWithImpl(LocationServiceDisabled<T> _value,
      $Res Function(LocationServiceDisabled<T>) _then)
      : super(_value, (v) => _then(v as LocationServiceDisabled<T>));

  @override
  LocationServiceDisabled<T> get _value =>
      super._value as LocationServiceDisabled<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LocationServiceDisabled<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$LocationServiceDisabled<T> implements LocationServiceDisabled<T> {
  const _$LocationServiceDisabled({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure<$T>.locationServiceDisabled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationServiceDisabled<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $LocationServiceDisabledCopyWith<T, LocationServiceDisabled<T>>
      get copyWith =>
          _$LocationServiceDisabledCopyWithImpl<T, LocationServiceDisabled<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestTimeOut(String message),
    @required TResult wrongAuthCredintials(String message),
    @required TResult emailAlreadyInUse(String message),
    @required TResult userDisabled(String message),
    @required TResult locationError(String message),
    @required TResult locationServiceDisabled(String message),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return locationServiceDisabled(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestTimeOut(String message),
    TResult wrongAuthCredintials(String message),
    TResult emailAlreadyInUse(String message),
    TResult userDisabled(String message),
    TResult locationError(String message),
    TResult locationServiceDisabled(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationServiceDisabled != null) {
      return locationServiceDisabled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestTimeOut(RequestTimeOut<T> value),
    @required TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required TResult userDisabled(UserDisabled<T> value),
    @required TResult locationError(LocationError<T> value),
    @required TResult locationServiceDisabled(LocationServiceDisabled<T> value),
  }) {
    assert(requestTimeOut != null);
    assert(wrongAuthCredintials != null);
    assert(emailAlreadyInUse != null);
    assert(userDisabled != null);
    assert(locationError != null);
    assert(locationServiceDisabled != null);
    return locationServiceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestTimeOut(RequestTimeOut<T> value),
    TResult wrongAuthCredintials(WrongAuthCredintials<T> value),
    TResult emailAlreadyInUse(EmailAlreadyInUse<T> value),
    TResult userDisabled(UserDisabled<T> value),
    TResult locationError(LocationError<T> value),
    TResult locationServiceDisabled(LocationServiceDisabled<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (locationServiceDisabled != null) {
      return locationServiceDisabled(this);
    }
    return orElse();
  }
}

abstract class LocationServiceDisabled<T> implements Failure<T> {
  const factory LocationServiceDisabled({@required String message}) =
      _$LocationServiceDisabled<T>;

  @override
  String get message;
  @override
  $LocationServiceDisabledCopyWith<T, LocationServiceDisabled<T>> get copyWith;
}
