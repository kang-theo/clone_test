import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../mwu_api_response_meta_model/mwu_api_response_meta_model.dart';

part 'mwu_api_response_model.freezed.dart';

@freezed
class MWUApiResponse<T> with _$MWUApiResponse<T> {
  const factory MWUApiResponse({
    T? data,
    @JsonKey(name: 'http_status') required int statusCode,
    @Default('') String message,
    Map<String, List<dynamic>>? errors,
    @JsonKey(name: 'error_code') String? errorCode,
    MWUApiResponseMeta? meta,
  }) = _MWUApiResponse<T>;

  factory MWUApiResponse.fromDioResponse(
    Response response,
    T Function(Map<String, dynamic> json)? fromJsonT,
  ) {
    final responseData =
        response.data is String ? json.decode(response.data) : response.data;

    T? data;
    if (responseData != null && responseData.containsKey('data') && fromJsonT != null) {
      data = fromJsonT(responseData['data']);
    }
    return MWUApiResponse<T>(
      data: data,
      statusCode: response.statusCode ?? 0,
      message: response.statusMessage ?? '',
      meta: MWUApiResponseMeta.fromJson(response.data['meta'] ?? {}),
    );
  }

  factory MWUApiResponse.fromException(dynamic e) {
    int statusCode = 500;
    String? message;
    Map<String, List<dynamic>>? errors;
    String? errorCode;

    if (e is DioException) {
      // DioException
      statusCode = e.response?.statusCode ?? 500;
      message = e.response?.data['message'];
      errorCode = e.response?.data['error_code'];

      if (e.response?.data['errors'] != null) {
        errors = Map<String, List<dynamic>>.from(e.response!.data['errors']);
      }
    } else {
      // Other exception
      message = 'An unexpected error occurred: ${e.toString()}';
    }

    return MWUApiResponse<T>(
      data: null,
      statusCode: statusCode,
      message: message ?? 'An error occurred',
      errors: errors,
      errorCode: errorCode,
    );
  }
}
