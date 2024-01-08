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

  // methods to send http requests can be invoked by external classes
  Future<Response> getRequest<T>(
      String version,
      String path,
      {
        String? userId,
        Map<String, dynamic>? params,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = userId != null ? '/api/$version/$path/$userId' : '/api/$version/$path';

    return _request(fullPath, method: HttpMethod.get, params: params, withAuth: withAuth, contentType: contentType);
  }

  Future<Response> postRequest<T>(
      String version,
      String path,
      {
        String? userId,
        Map<String, dynamic>? params,
        dynamic data,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = userId != null ? '/api/$version/$path/$userId' : '/api/$version/$path';

    return _request(fullPath, method: HttpMethod.post, params: params, data: data, withAuth: withAuth, contentType: contentType);
  }

  Future<Response> putRequest<T>(
      String version,
      String path,
      {
        String? userId,
        Map<String, dynamic>? params,
        dynamic data,
        String contentType = 'application/json',
      }) {

    String fullPath = userId != null ? '/api/$version/$path/$userId' : '/api/$version/$path';

    return _request(fullPath, method: HttpMethod.put, params: params, data: data, contentType: contentType);
  }

  Future<Response> deleteRequest<T>(
      String version,
      String path,
      {
        String? userId,
        Map<String, dynamic>? params,
        String contentType = 'application/json',
      }) {

    String fullPath = userId != null ? '/api/$version/$path/$userId' : '/api/$version/$path';
    return _request(fullPath, method: HttpMethod.delete, params: params, contentType: contentType);
  }

  Future<Response> patchRequest<T>(
      String version,
      String path,
      {
        String? userId,
        Map<String, dynamic>? params,
        dynamic data,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = userId != null ? '/api/$version/$path/$userId' : '/api/$version/$path';
    return _request(fullPath, method: HttpMethod.patch, params: params, data: data, withAuth: withAuth, contentType: contentType);
  }

  Future<Response> headRequest<T>(
      String version,
      String path,
      {
        String? userId,
        Map<String, dynamic>? params,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = userId != null ? '/api/$version/$path/$userId' : '/api/$version/$path';
    return _request(fullPath, method: HttpMethod.head, params: params, withAuth: withAuth, contentType: contentType);
  }

  // private method to send http requests
  Future<Response> _request<T>(
    String fullPath, {
    HttpMethod method = HttpMethod.get,
    Map<String, dynamic>? params,
    dynamic data,
    bool withAuth = true,
    String contentType = 'application/json',
  }) async {
    // Get dynamic headers
    Map<String, String> headers =
        await _getDynamicHeaders(withAuth, contentType);

    print('headers:::${headers}');

    // Initialize options and add headers
    Options options = Options(method: _httpMethodToString(method));
    options.headers = headers;

    // write a method to transfer T to Map<String,dynamic>


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
