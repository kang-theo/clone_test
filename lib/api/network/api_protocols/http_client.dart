import 'package:dio/dio.dart';
import 'package:mwu/api/network/api_protocols/dio_client.dart';
import '../api_models/api_request_methods_model/api_request_methods_model.dart';
import '../api_models/mwu_api_header_model/mwu_api_header_model.dart';

class HttpClient {
  String? _accessToken;

  final DioClient _dioClient = DioClient();

  // set access token from external class
  set accessToken(String? token) {
    _accessToken = token;
  }

  // invoke this method from upper layer
  Future<Response> request(
    String version,
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, dynamic>? params,
    dynamic data,
    bool withAuth = true,
    String contentType = 'application/json',
  }) async {
    // get full url
    String fullPath = '/api/$version/$path';

    // Get dynamic headers
    Map<String, String> headers =
        await _getDynamicHeaders(withAuth, contentType);

    print('headers:::${headers}');

    // Initialize options and add headers
    Options options = Options(method: _httpMethodToString(method));
    options.headers = headers;

    try {
      // invoke dio request
      Response response = await _dioClient.dio.request(
        fullPath,
        queryParameters: params,
        data: data,
        options: options,
      );

      return response;

    }catch(e){

      rethrow;
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

    return headerModel.toMap( withAuth: withAuth);
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
