// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mwu_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MWUApiResponseImpl<T> _$$MWUApiResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$MWUApiResponseImpl<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      statusCode: json['http_status'] as int,
      message: json['message'] as String? ?? '',
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      errorCode: json['error_code'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MWUApiResponseImplToJson<T>(
  _$MWUApiResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'http_status': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
      'error_code': instance.errorCode,
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
