import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:mwu/api/network/api_protocols/dio_client.dart';
import 'request_methods.dart';
import '../api_models/mwu_api_header_model/mwu_api_header_model.dart';
import '../api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';
import '../api_models/mwu_api_response_model/mwu_api_response_model.dart';

class HttpClient {
  String? _accessToken;

  final DioClient _dioClient = DioClient();

  // set access token from external class
  set accessToken(String? token) {
    _accessToken = token;
  }

  // methods to send http requests can be invoked by external classes
  Future<MWUApiResponse<T>> getRequest<T>(
      String path,
      MWUApiParameter params,{
      T Function(Map<String, dynamic>)? fromJsonT
      }) async {
    String fullPath = '/api/${params.version}/$path';

    Map<String, dynamic> queryParamsJson = params.queryParameters != null
        ? jsonDecode(jsonEncode(params.queryParameters))
        : {};

    try {
      Response response = await _request(
          fullPath,
          method: HttpMethod.get,
          params: queryParamsJson,
          contentType: params.contentType
      );

      return MWUApiResponse<T>.fromDioResponse(response, fromJsonT);
    } catch (e) {
      return MWUApiResponse<T>.fromException(e);
    }
  }

  Future<MWUApiResponse<T>> postRequest<T>(
      String path,
      MWUApiParameter params,{
        T Function(Map<String, dynamic>)? fromJsonT
      }) async {
    // Get full path
    String fullPath = '/api/${params.version}/$path';

    // Get query parameters
    Map<String, dynamic> queryParamsJson = params.queryParameters != null
        ? jsonDecode(jsonEncode(params.queryParameters))
        : {};

    // Get data parameters
    dynamic dataParamsJson = params.dataParameters != null
        ? jsonDecode(jsonEncode(params.dataParameters))
        : null;

    try {
      Response response = await _request(
          fullPath,
          method: HttpMethod.post,
          params: queryParamsJson,
          data: dataParamsJson,
          withAuth: params.withAuth??true,
          contentType: params.contentType
      );

      return MWUApiResponse<T>.fromDioResponse(response, fromJsonT);
    } catch (e) {
      return MWUApiResponse<T>.fromException(e);
    }
  }

  Future<MWUApiResponse<T>> putRequest<T>(
      String path,
      MWUApiParameter params,{
        T Function(Map<String, dynamic>)? fromJsonT
      }) async {
    String fullPath = '/api/${params.version}/$path';

    // Get query parameters
    Map<String, dynamic> queryParamsJson = params.queryParameters != null
        ? jsonDecode(jsonEncode(params.queryParameters))
        : {};

    // Get data parameters
    dynamic dataParamsJson = params.dataParameters != null
        ? jsonDecode(jsonEncode(params.dataParameters))
        : null;

    try {
      Response response = await _request(
          fullPath,
          method: HttpMethod.put,
          params: queryParamsJson,
          data: dataParamsJson,
          contentType: params.contentType
      );

      return MWUApiResponse<T>.fromDioResponse(response, fromJsonT);
    } catch (e) {

      return MWUApiResponse<T>.fromException(e);
    }
  }

  Future<MWUApiResponse<T>> deleteRequest<T>(
      String path,
      MWUApiParameter params,{
        T Function(Map<String, dynamic>)? fromJsonT
      }) async {
    String fullPath = '/api/${params.version}/$path';

    // Get query parameters
    Map<String, dynamic> queryParamsJson = params.queryParameters != null
        ? jsonDecode(jsonEncode(params.queryParameters))
        : {};

    // Get data parameters
    dynamic dataParamsJson = params.dataParameters != null
        ? jsonDecode(jsonEncode(params.dataParameters))
        : null;

    try {
      Response response = await _request(
          fullPath,
          method: HttpMethod.delete,
          params: queryParamsJson,
          data: dataParamsJson,
          contentType: params.contentType
      );

      return MWUApiResponse<T>.fromDioResponse(response, fromJsonT);
    } catch (e) {
      return MWUApiResponse<T>.fromException(e);
    }
  }


  Future<MWUApiResponse<T>> patchRequest<T>(
      String path,
      MWUApiParameter params,{
        T Function(Map<String, dynamic>)? fromJsonT
      }) async {
    String fullPath = '/api/${params.version}/$path';

    // Get query parameters
    Map<String, dynamic> queryParamsJson = params.queryParameters != null
        ? jsonDecode(jsonEncode(params.queryParameters))
        : {};

    // Get data parameters
    dynamic dataParamsJson = params.dataParameters != null
        ? jsonDecode(jsonEncode(params.dataParameters))
        : null;

    try {
      Response response = await _request(
          fullPath,
          method: HttpMethod.put,
          params: queryParamsJson,
          data: dataParamsJson,
          contentType: params.contentType
      );

      return MWUApiResponse<T>.fromDioResponse(response, fromJsonT);
    } catch (e) {
      return MWUApiResponse<T>.fromException(e);
    }
  }

  // private method to send http requests
  Future<Response> _request(

    String fullPath, // Positional Parameters: mandatory with order
      // Named Parameters: optional and could be out of order
    {
      // for header
      HttpMethod method = HttpMethod.get,
    bool withAuth = true, // decide access token
    String contentType = 'application/json',
    // parameters
    Map<String, dynamic>? params, // query params
    dynamic data, // body params
    }

  ) async {

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

  // helper to convert http method to string
  String _httpMethodToString(HttpMethod method) {
    return method.toString().split('.').last.toUpperCase();
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
