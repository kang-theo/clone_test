import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';
import 'package:mwu/api/network/http_client.dart';
import 'package:mwu/api/network/http_methods.dart';

class AuthService {
  final HttpClient _httpClient = HttpClient();

  Future<MWUApiResponse<T>> login<T>(String username, String password,
      T Function(dynamic data) fromJsonT) async {
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
