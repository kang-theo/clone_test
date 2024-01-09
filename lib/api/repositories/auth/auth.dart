import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';
import 'package:mwu/api/network/api_services/auth/auth_service.dart';
import 'package:mwu/api/network/api_services/auth/auth_request_models/register_parameters_model.dart';
import 'package:mwu/api/network/api_services/auth/auth_request_models/login_parameters_model.dart';

class AuthRepository implements Exception {

  final AuthService _authService = AuthService();

  Future<MWUApiResponse<LoginResponseDataModel>> login(
      String username, String password) async {
    try {
      MWUApiResponse<LoginResponseDataModel> response = await _authService
          .reqLogin<LoginResponseDataModel, LoginParams>(
              LoginParams(username:username,password:password),
              LoginResponseDataModel.fromJson
      );

      if (response.statusCode == 200) {
        return response;

      } else {
        throw Exception("Get token failed: ${response.message}");
      }
    } catch (e) {
      throw Exception("Exception during login: $e");
    }
  }

  Future<MWUApiResponse<UserModel>?> getUserInfo() async {
    try {
      MWUApiResponse<UserModel> response =
          await _authService.reqUser(UserModel.fromJson);

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("Get user info failed: ${response.message}");
      }
    } catch (e) {
      throw Exception("Exception during getting user info: $e");
    }
  }
}
