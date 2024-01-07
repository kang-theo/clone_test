import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_services/auth/auth_service.dart';

void main() {
  group('Login API Test', () {
    late AuthService authService;

    setUp(() {
      authService = AuthService();
    });

    test('Successful login', () async {
      var response = await authService.reqLogin<LoginResponseDataModel>(
        "qingyan.yang@pixelforce.com.au",
        "1234567yY.",
        LoginResponseDataModel.fromJson,
      );
      print(response);
      expect(response.statusCode, 200);
      //expect(response.data, isA<MWUApiToken>());
    });

    test('Successful login', () async {
      var response = await authService.reqUser<UserModel>(
        UserModel.fromJson,
      );

      print(response);
      expect(response.statusCode, 200);
      //expect(response.data, isA<MWUApiToken>());
    });
  });
}