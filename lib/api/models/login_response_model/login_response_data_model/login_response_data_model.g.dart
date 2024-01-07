// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseDataModelImpl _$$LoginResponseDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseDataModelImpl(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseDataModelImplToJson(
        _$LoginResponseDataModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'user': instance.user,
    };
