import 'package:dio/dio.dart';

import '../../utils/constants/http_client_constants.dart';
import './http_methods.dart';
import 'api_models/mwu_api_header_model/mwu_api_header_model.dart';
import 'api_models/mwu_api_response_model/mwu_api_response_model.dart';

class HttpClient {

  String? _accessToken;

  // init
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

  // set access token from external class
  set accessToken(String? token) {
    _accessToken = token;
  }

  // invoke this method from endpoints
  Future<MWUApiResponse<T>> request<T>(String version,
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
    String fullPath = '/api/$version/$path';

    // extract option
    options = options ?? Options(method: _httpMethodToString(method));
    options.headers?.addAll(await _getDynamicHeaders(withAuth, contentType));

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
      MWUApiResponse<T>.fromJson(response.data, fromJsonT!);

      if (onSuccess != null) onSuccess(mwuApiResponse);

      return mwuApiResponse;
    } on DioException catch (e) {
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiErrResponse = MWUApiResponse<T>(
        data: null,
        statusCode: e.response?.statusCode ?? 500,
        message: e.message,
        errors: e.response?.data,
      );

      if (onError != null) onError(mwuApiErrResponse);

      return mwuApiErrResponse;
    }
  }

  // method to get dynamic headers
  Future<Map<String, String>> _getDynamicHeaders(bool withAuth,
      String contentType,) async {
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
    return method
        .toString()
        .split('.')
        .last
        .toUpperCase();
  }
}
