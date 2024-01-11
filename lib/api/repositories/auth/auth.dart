import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_services/auth/login_service/login_service.dart';
import 'package:mwu/api/network/api_services/auth/login_service/login_parameters_model.dart';
import 'package:mwu/api/network/api_services/auth/user_get_service/user_get_service.dart';
import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';


class AuthRepository implements Exception {

  final LoginService _loginService = LoginService();
  final UserGetService _userGetService = UserGetService();
  ///final OtherAuthServices _otherServices = OtherServices();

  Future<LoginResponseDataModel?> login(
      String username, String password) async {
    LoginResponseDataModel? response = await _loginService
        .reqLogin(
        LoginParameters(username, password)
    );
    return response;
  }

  Future<UserModel?> getUser() async {
    UserModel? response = await _userGetService
        .reqUserGet(
        MWUApiParameter()
    );
    return response;
  }

///Future<OtherAuthResponseDataModel?> otherAuthFunc(){};
}
