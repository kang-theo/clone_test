import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mwu_api_response_model.freezed.dart';
part 'mwu_api_response_model.g.dart';

@freezed
class MWUApiResponse<T> with _$MWUApiResponse<T> {
  const factory MWUApiResponse({
    T? data,
    @JsonKey(name: 'http_status') required int statusCode,
    @Default('') String message,
    Map<String, List<String>>? errors,
    @JsonKey(name: 'error_code') String? errorCode,
    Meta? meta,
  }) = _MWUApiResponse<T>;

  factory MWUApiResponse.fromDioResponse(
    Response response,
    T Function(Object? json) fromJsonT,
  ) {
    return MWUApiResponse<T>(
      data: fromJsonT(response.data['data']),
      statusCode: response.statusCode ?? 0,
      message: response.statusMessage ?? '',
      meta: Meta.fromJson(response.data['meta'] ?? {}),
    );
  }

  factory MWUApiResponse.fromDioException(DioException e) {
    return MWUApiResponse<T>(
      data: null,
      statusCode: e.response?.statusCode ?? 500,
      message: e.response?.data['message'],
      errors: e.response?.data['errors'] as Map<String, List<String>>?,
      errorCode: e.response?.data['error_code'],
    );
  }
}

@freezed
class Meta with _$Meta {
  const factory Meta() = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
