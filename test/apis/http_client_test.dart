import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mwu/api/network/http_client.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('HttpClient Tests', () {
    late MockDio mockDio;
    late HttpClient httpClient;

    setUp(() {
      mockDio = MockDio();
      httpClient = HttpClient(dio: mockDio);
    });

    test('Successful request', () async {
      when(mockDio.request(
        '/api/v1/test/path',
        queryParameters: anyNamed('queryParameters'),
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => Response<dynamic>(
            requestOptions: RequestOptions(path: '/api/v1/test/path'),
            data: {
              "data": 'Mocked Data',
              "http_status": 200,
              "message": "Success"
            },
            statusCode: 200,
          ));
      try {
        var response = await httpClient.request<String>('v1', 'test/path',
            fromJsonT: (data) => data['data'] as String);

        expect(response.data, equals('Mocked Data'));
        expect(response.statusCode, equals(200));
      } catch (e) {
        fail('Exception thrown during test: $e');
      }
    });
  });
}
