import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../utils/constants/api_service_constants.dart';
import 'api_response_model.dart';

enum DioMethod { get, post, put, delete, patch, head }

class ApiService {
  String? _accessToken, _client, _expiry, _tokenType, _uid;

  final Dio _dio = Dio(BaseOptions(
      baseUrl: ApiServiceConstants.baseUrl,
      connectTimeout: ApiServiceConstants.connectTimeout,
      receiveTimeout: ApiServiceConstants.receiveTimeout));

  static final instance = ApiService._internal();

  ApiService._internal();

  set accessToken(String? token) {
    _accessToken = token;
  }

  Future<ApiResponse<T>> request<T>(
    String path, {
    DioMethod method = DioMethod.get,
    Map<String, dynamic>? params,
    dynamic data,
    Options? options,
    T Function(dynamic data)? fromJsonT,
    Function(ApiResponse<T>)? onSuccess,
    Function(ApiResponse<T>)? onError,
  }) async {
    options = options ?? Options(method: _getMethodValue(method));
    // Get dynamic headers and add to the request
    options.headers?.addAll(await _getDynamicHeaders());

    try {
      Response response = await _dio.request(path,
          queryParameters: params, data: data, options: options);

      ApiResponse<T> apiResponse = _handleResponse<T>(response, fromJsonT);
      if (onSuccess != null) onSuccess(apiResponse);
      return apiResponse;
    } on DioException catch (e) {
      ApiResponse<T> apiError = _handleDioError<T>(e, fromJsonT);
      if (onError != null) onError(apiError);
      return apiError;
    }
  }

  // invoke from external class
  fillCredentialsFromJson(Map<String, String> json) {
    _accessToken = json['accessToken'];
    _client = json['client'];
    _expiry = json['expiry'];
    _tokenType = json['tokenType'];
    _uid = json['uid'];
  }

  Future<Map<String, String>> _getDynamicHeaders() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    String deviceModel = Platform.isIOS
        ? (await deviceInfo.iosInfo).utsname.machine ?? ''
        : (await deviceInfo.androidInfo).model ?? '';
    String systemVersion = Platform.isIOS
        ? (await deviceInfo.iosInfo).systemVersion ?? ''
        : (await deviceInfo.androidInfo).version.sdkInt.toString();

    return {
      'Content-Type': 'application/json',
      'access-token': _accessToken ?? '',
      'client': _client ?? '',
      'expiry': _expiry ?? '',
      'token-type': _tokenType ?? '',
      'uid': _uid ?? '',
      'device-client': _client ?? '',
      'platform': Platform.isIOS ? 'IOS' : 'ANDROID',
      'X-DEVICE-MODEL': deviceModel,
      'X-SYSTEM-VERSION': systemVersion,
      'X-APP-BUILD': packageInfo.buildNumber,
      'X-APP-VERSION': packageInfo.version,
    };
  }

  ApiResponse<T> _handleResponse<T>(
      Response response, T Function(dynamic data)? fromJsonT) {
    if (fromJsonT != null) {
      return ApiResponse<T>.fromJson(response.data, fromJsonT);
    } else {
      throw Exception(
          "fromJsonT function must be provided for type conversion.");
    }
  }

  ApiResponse<T> _handleDioError<T>(
      DioException error, T Function(dynamic data)? fromJsonT) {
    if (fromJsonT != null) {
      return ApiResponse<T>(
        statusCode: error.response?.statusCode ?? 500,
        message: error.message,
        data: fromJsonT({}),
      );
    } else {
      throw Exception(
          "fromJsonT function must be provided for type conversion in error handling.");
    }
  }

  String _getMethodValue(DioMethod method) {
    return method.toString().split('.').last;
  }

  void refreshAccessToken() {
    // TODO: Implement the logic to refresh the access token
    // For now, hardcoding a new token
    _accessToken = 'new_access_token';
  }

  void revokeAccessToken() {
    // TODO: Implement the logic to revoke the access token
    // For now, just setting it to null
    _accessToken = null;
  }
}
