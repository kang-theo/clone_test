import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/network/api_models/mwu_api_token_model/mwu_api_token_model.dart';
import 'package:mwu/api/network/api_services/account/auth_service.dart';

void main() {
  group('Login API Test', () {
    late AuthService authService;

    setUp(() {
      authService = AuthService();
    });

    test('Successful login', () async {
      var response = await authService.login<MWUApiToken>(
        "qingyan.yang@pixelforce.com.au",
        "1234567yY",
        MWUApiToken.fromJsonDynamic,
      );

      // expect(response.statusCode, 200);
      // expect(response.data, isA<MWUApiToken>());
    });
  });
}
