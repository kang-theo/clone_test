import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';
import 'package:mwu/api/network/api_models/mwu_api_token_model/mwu_api_token_model.dart';
import 'package:mwu/api/network/api_services/account/auth_service.dart';

class AuthRepository implements Exception {
  final AuthService _authService;

  AuthRepository(this._authService);

  Future<MWUApiResponse<MWUApiToken>?> getToken(
      String username, String password) async {
    try {
      MWUApiResponse<MWUApiToken> response = await _authService.login(
          username, password, MWUApiToken.fromJsonDynamic);

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("Get token failed: ${response.message}");
      }
    } catch (e) {
      throw Exception("Exception during login: $e");
    }
  }
}
