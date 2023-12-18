import 'package:dio/dio.dart';
import 'dart:io';
import '../utils/constants/api_service_constants.dart';


enum DioMethod {
  get,
  post,
  put,
  delete,
  patch,
  head
}

class ApiService {

  String? _accessToken;
  String? _client;
  String? _expiry;
  String? _tokenType;
  String? _uid;

  final Dio _dio = Dio();
  final CancelToken _cancelToken = CancelToken();

  static final instance = ApiService._internal();

  ApiService._internal() {
    _init();
  }

  void _init() {
    _dio.options = BaseOptions(
        baseUrl: ApiServiceConstants.baseUrl,
        connectTimeout: ApiServiceConstants.connectTimeout,
        receiveTimeout: ApiServiceConstants.receiveTimeout
    );
  }

  Future<dynamic> request(String path, {
    DioMethod method = DioMethod.get,
    Map<String, dynamic>? params,
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    options ??= Options(method: _getMethodValue(method));

    // Directly setting headers for each request
    options.headers?.addAll(_getCustomHeaders());

    try {
      Response response = await _dio.request(path,
          queryParameters: params,
          data: data,
          options: options,
          cancelToken: cancelToken ?? _cancelToken
      );

      // Handling different HTTP status codes
      return _handleResponse(response);
    } on DioException catch (e) {
      // Handle Dio exception
      return _handleDioError(e);
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

  Map<String, String?> _getCustomHeaders() {
    return {
      'Content-Type': 'application/json',
      'access-token': _accessToken,
      'client': _client,
      'expiry': _expiry,
      'token-type': _tokenType,
      'uid': _uid,
      'device-client': _client,
      'platform': Platform.isIOS ? 'IOS' : 'ANDROID'
    };
  }

  dynamic _handleResponse(Response response) {
    // Parse response based on status code
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response.data;
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      return 'Client Error: ${response.statusCode}';
    } else if (response.statusCode! >= 500) {
      return 'Server Error: ${response.statusCode}';
    } else {
      return 'Unexpected Status Code: ${response.statusCode}';
    }
  }

  dynamic _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.badResponse:
        return 'Response Error: ${error.response?.statusCode} - ${error.response?.data}';
      case DioExceptionType.connectionError:
        if (error.error is SocketException) {
          return 'Network Error: ${error.error}';
        }
        break;
      default:
        break;
    }
    return 'Dio Exception: ${error.message}';
  }

  String _getMethodValue(DioMethod method) {
    return method.toString().split('.').last;
  }

  void cancelRequests({CancelToken? token}) {
    token ?? _cancelToken.cancel("cancelled");
  }
}
