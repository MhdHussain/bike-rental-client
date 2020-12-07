// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
class _$AuthTearOff {
  const _$AuthTearOff();

// ignore: unused_element
  _Auth call(@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken) {
    return _Auth(
      accessToken,
      refreshToken,
    );
  }

// ignore: unused_element
  Auth fromJson(Map<String, Object> json) {
    return Auth.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Auth = _$AuthTearOff();

/// @nodoc
mixin _$Auth {
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  Map<String, dynamic> toJson();
  $AuthCopyWith<Auth> get copyWith;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;

  @override
  $Res call({
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) then) =
      __$AuthCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$AuthCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(_Auth _value, $Res Function(_Auth) _then)
      : super(_value, (v) => _then(v as _Auth));

  @override
  _Auth get _value => super._value as _Auth;

  @override
  $Res call({
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_Auth(
      accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken == freezed ? _value.refreshToken : refreshToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Auth with DiagnosticableTreeMixin implements _Auth {
  const _$_Auth(@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken)
      : assert(accessToken != null),
        assert(refreshToken != null);

  factory _$_Auth.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Auth(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Auth'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @override
  _$AuthCopyWith<_Auth> get copyWith =>
      __$AuthCopyWithImpl<_Auth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthToJson(this);
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken) = _$_Auth;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$_Auth.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  _$AuthCopyWith<_Auth> get copyWith;
}
