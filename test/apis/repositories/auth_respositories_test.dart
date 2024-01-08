import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_services/auth/auth_service.dart';
import 'package:mwu/api/repositories/auth/auth.dart';

void main() {
  group('AuthRepository Test', () {
    late AuthRepository authRepository;

    setUp(() {
      authRepository = AuthRepository();
    });

    test('Successful login', () async {
      var response = await authRepository.login(
        "qingyan.yang@pixelforce.com.au",
        "1234567yY.",
      );
      expect(response!.statusCode, 200);
      expect(response.data, isA<LoginResponseDataModel>());
    });

    // test('Get user info', () async {
    //   var response = await authRepository.getUserInfo();
    //   expect(response!.statusCode, 200);
    //   expect(response.data, isA<UserModel>());
    // });
  });
}
