import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';
import 'package:mwu/api/network/api_services/auth/login_service/login_service.dart';
import 'package:mwu/api/network/api_services/auth/login_service/login_parameters_model.dart';
import 'package:mwu/api/network/api_services/auth/user_get_service/user_get_service.dart';

void main() {
  late LoginService loginService;
  late UserGetService userGetService;

  setUp(() {
    loginService = LoginService();
    userGetService = UserGetService();
  });

  group('auth services test', () {

    // login test
    test('Successful login', () async {
      var response = await loginService.reqLogin(
        LoginParameters("qingyan.yang@pixelforce.com.au", "1234567yY."),
      );
      print(response);
      expect(response, isA<LoginResponseDataModel>());
    });

    test('Fail login with wrong password', () async {
      expect(
        loginService.reqLogin(LoginParameters("qingyan.yang@pixelforce.com.au", "1234567")),
          throwsA(
              predicate(
                      (e) => e is Exception && e.toString().contains('401'),
              ),
          ),
      );
    });

    // get user test
    test('Successful get user', () async {
      var response = await userGetService.reqUserGet(
        MWUApiParameter(),
      );
      print(response);
      expect(response, isA<UserModel>());
    });

    test('Fail to get user, token invalid', () async {
      expect(
        userGetService.reqUserGet(MWUApiParameter(),),
        throwsA(
          predicate(
                (e) => e is Exception && e.toString().contains('401'),
          ),
        ),
      );
    });

  });
}
