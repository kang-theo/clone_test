import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/network/api_models/mwu_api_token_model/mwu_api_token_model.dart';
import 'package:mwu/api/network/http_client.dart';
import 'package:mwu/api/network/http_methods.dart';

void main() {
  group('Login API Test', () {
    late HttpClient httpClient;

    setUp(() {
      httpClient = HttpClient();
    });

    test('Successful login', () async {
      var response = await httpClient.request<MWUApiToken>('v1', 'auth/login',
          method: HttpMethod.post,
          data: {
            "username": "qingyan.yang@pixelforce.com.au",
            "password": "1234567yY.",
          },
          withAuth: false,
          fromJsonT: MWUApiToken.fromJsonDynamic);

      expect(response.statusCode, 200);
      // check type of data
      expect(response.data, isA<MWUApiToken>());
    });
  });
}
