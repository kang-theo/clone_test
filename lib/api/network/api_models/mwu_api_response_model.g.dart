// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mwu_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MWUApiResponseDataImpl<T> _$$MWUApiResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$MWUApiResponseDataImpl<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      statusCode: json['statusCode'] as int,
      message: json['message'] as String? ?? '',
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      errorCode: json['errorCode'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MWUApiResponseDataImplToJson<T>(
  _$MWUApiResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'statusCode': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
      'errorCode': instance.errorCode,
      'meta': instance.meta,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl();

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{};
