import 'package:dio/dio.dart';

import '../../utils/constants/http_client_constants.dart';
import './http_methods.dart';
import 'api_models/mwu_api_header_model/mwu_api_header_model.dart';
import 'api_models/mwu_api_response_model/mwu_api_response_model.dart';

class HttpClient {
  String? _accessToken;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: HttpClientConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: 6000),
      receiveTimeout: const Duration(milliseconds: 6000),
    ),
  );

  // singleton
  static final instance = HttpClient._internal();

  HttpClient._internal();

  set accessToken(String? token) {
    _accessToken = token;
  }

  // invoke this method from endpoints
  Future<MWUApiResponse<T>> request<T>(
    String version,
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, dynamic>? params,
    dynamic data,
    Options? options,
    bool withAuth = true,
    String contentType = 'application/json',
    T Function(dynamic data)? fromJsonT,
    Function(MWUApiResponse<T>)? onSuccess,
    Function(MWUApiResponse<T>)? onError,
  }) async {
    // get url
    String fullPath = '$version/$path';

    // extract option
    options = options ?? Options(method: _httpMethodToString(method));
    options.headers?.addAll(await _getDynamicHeaders(withAuth, contentType));

    try {
      Response response = await _dio.request(
        fullPath,
        queryParameters: params,
        data: data,
        options: options,
      );

      MWUApiResponse<T> mwuApiResponse =
          _handleResponse<T>(response, fromJsonT);

      if (onSuccess != null) onSuccess(mwuApiResponse);

      return mwuApiResponse;
    } on DioException catch (e) {
      MWUApiResponse<T> apiError = _handleDioError<T>(e, fromJsonT);

      if (onError != null) onError(apiError);

      return apiError;
    }
  }

  Future<Map<String, String>> _getDynamicHeaders(
    bool withAuth,
    String contentType,
  ) async {
    var headerModel = MWUApiHeaderModel(
      contentType: contentType,
      accessToken: _accessToken,
    );

    return headerModel.toMap(withAuth: withAuth);
  }

  MWUApiResponse<T> _handleResponse<T>(
      Response response, T Function(dynamic data)? fromJsonT) {
    // handle 200-300
    if (fromJsonT != null) {
      return MWUApiResponse<T>.fromJson(response.data, fromJsonT);
    } else {
      throw Exception(
          "fromJsonT function must be provided for type conversion.");
    }
  }

  MWUApiResponse<T> _handleDioError<T>(
      DioException error, T Function(dynamic data)? fromJsonT) {
    // handle 400+ & 500+
    if (fromJsonT != null) {
      return MWUApiResponse<T>(
        statusCode: error.response?.statusCode ?? 500,
        message: error.message,
        data: fromJsonT({}),
      );
    } else {
      throw Exception(
          "fromJsonT function must be provided for type conversion in error handling.");
    }
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

  // helper to convert http method to string
  String _httpMethodToString(HttpMethod method) {
    return method.toString().split('.').last.toUpperCase();
  }
}
