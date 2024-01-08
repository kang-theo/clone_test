import 'package:dio/dio.dart';
import '../../../utils/constants/http_client_constants.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: HttpClientConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: 6000),
      receiveTimeout: const Duration(milliseconds: 6000),
    ),
  );

  DioClient._internal();

  factory DioClient() {
    return _instance;
  }

  Dio get dio => _dio;
}
