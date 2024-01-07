import 'package:dio/dio.dart';

import '../../../utils/constants/http_client_constants.dart';
import '../api_models/api_request_methods_model/api_request_methods_model.dart';
import '../api_models/mwu_api_header_model/mwu_api_header_model.dart';
import '../api_models/mwu_api_response_model/mwu_api_response_model.dart';

class HttpClient {
  String? _accessToken;
  final Dio _dio;

  // private constructor
  HttpClient._internal(this._dio);

  // singleton
  static final HttpClient _instance = HttpClient._internal(
    // initialize Dio obj -> _dio
    Dio(
      BaseOptions(
        baseUrl: HttpClientConstants.baseUrl,
        connectTimeout: const Duration(milliseconds: 6000),
        receiveTimeout: const Duration(milliseconds: 6000),
      ),
    ),
  );

  // factory constructor to get singleton instance
  factory HttpClient() {
    return _instance;
  }

  // set access token from external class
  set accessToken(String? token) {
    _accessToken = token;
  }

  // invoke this method from upper layer
  Future<MWUApiResponse<T>> request<T>(
    String version,
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, dynamic>? params,
    dynamic data,
    Options? options,
    bool withAuth = true,
    String contentType = 'application/json',
    T Function(Map<String, dynamic>)? fromJsonT,
    Function(MWUApiResponse<T>)? onSuccess,
    Function(MWUApiResponse<T>)? onError,
  }) async {
    // get full url
    String fullPath = '/api/$version/$path';

    // extract option
    // Get dynamic headers
    Map<String, String> headers =
        await _getDynamicHeaders(withAuth, contentType);
    print('HTTP Headers: $headers');

    // Extract options and add headers
    options = options ?? Options(method: _httpMethodToString(method));
    options.headers = headers;
    // invoke dio request
    try {
      Response response = await _dio.request(
        fullPath,
        queryParameters: params,
        data: data,
        options: options,
      );

      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiResponse =
          MWUApiResponse<T>.fromDioResponse(response, fromJsonT!);

      print('test1: ${response.data['data']}');
      print('test2: ${response.statusCode}');
      print('test3: ${response.statusMessage}');
      print('test4: ${mwuApiResponse.statusCode}');
      print('test5: ${mwuApiResponse.message}');

      if (onSuccess != null) onSuccess(mwuApiResponse);

      return mwuApiResponse;
    } catch (e) {
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiError = MWUApiResponse<T>.fromException(e);

      print('test1: ${e}');
      print('test2: ${mwuApiError.statusCode}');
      print('test3: ${mwuApiError.message}');
      print('test4: ${mwuApiError.errorCode}');
      print('test5: ${mwuApiError.data}');

      if (onError != null) onError(mwuApiError);

      return mwuApiError;
    }
  }

  // method to get dynamic headers
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
