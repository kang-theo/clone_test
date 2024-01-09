import 'package:dio/dio.dart';
import 'dart:convert';
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
        T? params,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = '/api/$version/$path';

    Map<String, dynamic> paramsJson = params!=null? jsonDecode(jsonEncode(params)): {};

    return _request(fullPath, method: HttpMethod.get, params: paramsJson, withAuth: withAuth, contentType: contentType);
  }

  Future<Response> postRequest<T>(
      String version,
      String path,
      {
        T? params,
        dynamic data,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = '/api/$version/$path';

    Map<String, dynamic> paramsJson = params!=null? jsonDecode(jsonEncode(params)):{};

    return _request(fullPath, method: HttpMethod.post, params: paramsJson, data: data, withAuth: withAuth, contentType: contentType);
  }

  Future<Response> putRequest<T>(
      String version,
      String path,
      {
        T? params,
        dynamic data,
        String contentType = 'application/json',
      }) {

    String fullPath = '/api/$version/$path';

    Map<String, dynamic> paramsJson = params!=null? jsonDecode(jsonEncode(params)): {};

    return _request(fullPath, method: HttpMethod.put, params: paramsJson, data: data, contentType: contentType);
  }

  Future<Response> deleteRequest<T>(
      String version,
      String path,
      {
        T? params,
        String contentType = 'application/json',
      }) {

    String fullPath = '/api/$version/$path';

    Map<String, dynamic> paramsJson = params!=null? jsonDecode(jsonEncode(params)): {};

    return _request(fullPath, method: HttpMethod.delete, params: paramsJson, contentType: contentType);
  }

  Future<Response> patchRequest<T>(
      String version,
      String path,
      {
        T? params,
        dynamic data,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = '/api/$version/$path';

    Map<String, dynamic> paramsJson = params!=null? jsonDecode(jsonEncode(params)): {};

    return _request(fullPath, method: HttpMethod.patch, params: paramsJson, data: data, withAuth: withAuth, contentType: contentType);
  }

  Future<Response> headRequest<T>(
      String version,
      String path,
      {
        T? params,
        bool withAuth = true,
        String contentType = 'application/json',
      }) {

    String fullPath = '/api/$version/$path';

    Map<String, dynamic> paramsJson = params!=null? jsonDecode(jsonEncode(params)):{};

    return _request(fullPath, method: HttpMethod.head, params: paramsJson, withAuth: withAuth, contentType: contentType);
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
