import 'package:mwu/api/network/api_models/api_request_methods_model/api_request_methods_model.dart';
import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';
import 'package:mwu/api/network/api_protocols/http_client.dart';

class AuthService {
  final HttpClient _httpClient = HttpClient();

  Future<MWUApiResponse<T>> reqLogin<T>(String username, String password,
      T Function(Map<String, dynamic>) fromJsonT) async {
    return _httpClient.request(
      'v1',
      'auth/login',
      method: HttpMethod.post,
      data: {
        'username': username,
        'password': password,
      },
      withAuth: false,
      fromJsonT: fromJsonT,
    );
  }

  Future<MWUApiResponse<T>> reqUser<T>(
      T Function(Map<String, dynamic>) fromJsonT) async {
    _httpClient.accessToken =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hcGkuc3RhZ2luZy5ib2RpZXNieXJhY2hlbC5pbmZvXC9hcGlcL3YxXC9hdXRoXC9sb2dpbiIsImlhdCI6MTcwNDU5OTA2MSwiZXhwIjoxNzA4MDU1MDYxLCJuYmYiOjE3MDQ1OTkwNjEsImp0aSI6InpMU0p3Y0VQSUxKbU5EM3ciLCJzdWIiOjMzMzcyMCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.KWA8tq_-N1NuSqozWa1M8tm1n8r2AChZTr_V0g658go";
    return _httpClient.request(
      'v1',
      'auth/user',
      fromJsonT: fromJsonT,
    );
  }

// Future<MWUApiResponse<dynamic>> register(String email, String password) async {
//
// }

// Future<MWUApiResponse<dynamic>> changePassword(String oldPassword, String newPassword) async {
//
// }
//
//
// Future<MWUApiResponse<dynamic>> sendVerificationCode(String email) async {
//
// }
//
//
// Future<MWUApiResponse<dynamic>> verifyEmail(String email, String verificationCode) async {
//
// }
}
