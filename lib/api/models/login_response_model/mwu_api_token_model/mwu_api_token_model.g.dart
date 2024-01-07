// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mwu_api_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MWUApiTokenImpl _$$MWUApiTokenImplFromJson(Map<String, dynamic> json) =>
    _$MWUApiTokenImpl(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as String?,
    );

Map<String, dynamic> _$$MWUApiTokenImplToJson(_$MWUApiTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };
