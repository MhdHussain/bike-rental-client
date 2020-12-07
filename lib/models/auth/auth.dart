import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
abstract class Auth with _$Auth{

  const factory Auth(
@JsonKey(name: 'access_token') String accessToken, 
@JsonKey(name: 'refresh_token') String refreshToken, 
) = _Auth;
factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}