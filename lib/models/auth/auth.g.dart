// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$_$_AuthFromJson(Map<String, dynamic> json) {
  return _$_Auth(
    json['access_token'] as String,
    json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
