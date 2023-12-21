import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/token.dart';
import 'package:mwu/api/network/http_client.dart';
import 'package:mwu/api/network/http_methods.dart';

void main() {
  group('Login API Integration Test', () {
    late HttpClient httpClient;

    setUp(() {
      httpClient = HttpClient.instance;
    });

    test('Successful login', () async {
      var response = await httpClient.request<Token>('v1', 'auth/login',
          method: HttpMethod.post,
          data: {
            "username": "qingyan.yang@pixelforce.com.au",
            "password": "1234567yY.",
          },
          withAuth: false,
          fromJsonT: Token.fromJsonDynamic);

      expect(response.statusCode, 200);
      // check type of data
      expect(response.data, isA<Token>());
    });
  });
}
