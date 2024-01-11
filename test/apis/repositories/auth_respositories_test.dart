import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/repositories/auth/auth.dart';



void main() {
  late AuthRepository authRepository;

  setUp(() {
    authRepository = AuthRepository();
  });

  group('AuthRepository Test', () {

    // login
    test('Successfully login', () async {
      var response = await authRepository.login(
        "qingyan.yang@pixelforce.com.au",
        "1234567yY.",
      );
      expect(response, isA<LoginResponseDataModel>());
    });

    // getUser
    test('Successfully get user', () async {
      var response = await authRepository.getUser();
      expect(response, isA<UserModel>());
    });

  });
}
