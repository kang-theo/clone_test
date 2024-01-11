import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';
import 'package:mwu/api/network/api_services/auth/login_service/login_parameters_model.dart';
import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/network/api_services/user/user_update_service/user_measurements_update_parameters_model.dart';
import 'package:mwu/api/network/api_services/user/user_delete_service/user_delete_parameters_model.dart';



void main() {
  late HttpClient httpClient;
  late String testAccessToken;

  setUp(() {
    httpClient = HttpClient();
    // keep this token fresh
    testAccessToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hcGkuc3RhZ2luZy5ib2RpZXNieXJhY2hlbC5pbmZvXC9hcGlcL3YxXC9hdXRoXC9sb2dpbiIsImlhdCI6MTcwNDk0NzA5NSwiZXhwIjoxNzA4NDAzMDk1LCJuYmYiOjE3MDQ5NDcwOTUsImp0aSI6InRwZzJFaVZ0ZGtIZ1NEQksiLCJzdWIiOjMzMzcyMCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.TIEM5_kOndQDRWjcJBP9nHenPCnoxk1Se8B1NiFvqmQ"; // default access token
    httpClient.accessToken = testAccessToken;
  });

  group('HttpClient Integration Tests', () {

    ///
    ///
    /// test postRequest
    ///
    ///
    test('postRequest returns valid response', () async {

      String testPath = 'auth/register';
      MWUApiParameter testParams = LoginParameters("qingyan.yang@pixelforce.com.au", "1234567yY.");
      LoginResponseDataModel Function(Map<String, dynamic>) testFromJson = LoginResponseDataModel.fromJson;

      var response = await httpClient.postRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );

      expect(response.statusCode, 200);
      expect(response.data, isNotNull);
      expect(response.errorCode, isNull);

    });

    test('postRequest returns errors', () async {

      String testPath = 'auth/login';
      MWUApiParameter testParams = LoginParameters("qingyan.yang@pixelforce.com.au", "wrongPassword");
      LoginResponseDataModel Function(Map<String, dynamic>) testFromJson = LoginResponseDataModel.fromJson;

      var response = await httpClient.postRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );
      print(response);
      expect(response.statusCode, 401);
      expect(response.data, isNull);
      expect(response.errorCode, 'INVALID_CREDENTIALS');
      expect(response.message, 'The password you entered is incorrect. Please try again.');
    });


    test('postRequest returns valid response', () async {

      String testPath = 'auth/login';
      MWUApiParameter testParams = LoginParameters("qingyan.yang@pixelforce.com.au", "1234567yY.");
      LoginResponseDataModel Function(Map<String, dynamic>) testFromJson = LoginResponseDataModel.fromJson;

      var response = await httpClient.postRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );

      expect(response.statusCode, 200);
      expect(response.data, isNotNull);
      expect(response.errorCode, isNull);

    });

    test('postRequest returns errors', () async {

      String testPath = 'auth/login';
      MWUApiParameter testParams = LoginParameters("qingyan.yang@pixelforce.com.au", "wrongPassword");
      LoginResponseDataModel Function(Map<String, dynamic>) testFromJson = LoginResponseDataModel.fromJson;

      var response = await httpClient.postRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );
      print(response);
      expect(response.statusCode, 401);
      expect(response.data, isNull);
      expect(response.errorCode, 'INVALID_CREDENTIALS');
      expect(response.message, 'The password you entered is incorrect. Please try again.');
    });

    ///
    ///
    /// test getRequest
    ///
    ///
    test('getRequest returns valid response', () async {
      String testPath = 'auth/user';
      MWUApiParameter testParams = MWUApiParameter();
      UserModel Function(Map<String, dynamic>) testFromJson = UserModel.fromJson;

      var response = await httpClient.getRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );

      expect(response.statusCode, 200);
      expect(response.data, isNotNull);
    });

    test('getRequest returns token invalid', () async {
      // mock fake accessToken
      httpClient.accessToken = 'invalid_token';

      String testPath = 'auth/user';
      MWUApiParameter testParams = MWUApiParameter();
      UserModel Function(Map<String, dynamic>) testFromJson = UserModel.fromJson;

      var response = await httpClient.getRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );

      print(response);

      expect(response.statusCode, 401);
      expect(response.data, isNull);
      expect(response.errorCode, 'HTTP_UNAUTHORIZED');

      // reset accessToken
      httpClient.accessToken = testAccessToken;
    });

    ///
    ///
    /// test putRequest
    ///
    ///
    test('putRequest returns valid response', () async {

      String testPath = 'user/measurement-systems';
      MWUApiParameter testParams = UserMeasurementsUpdateParameters(1, 1);
      UserModel Function(Map<String, dynamic>) testFromJson = UserModel.fromJson;

      var response = await httpClient.putRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );

      expect(response.statusCode, 200);
      expect(response.data, isNotNull);
      expect(response.errorCode, isNull);

    });

    test('putRequest returns errors', () async {

      String testPath = 'user/measurement-systems';
      MWUApiParameter testParams = UserMeasurementsUpdateParameters(10, 1);
      UserModel Function(Map<String, dynamic>) testFromJson = UserModel.fromJson;

      var response = await httpClient.putRequest(
        testPath,
        testParams,
        fromJsonT: testFromJson,
      );

      print(response);
      expect(response.statusCode, 422);
      expect(response.data, isNull);
      expect(response.errorCode, isNotNull);

    });
    ///
    ///
    /// test patchRequest
    ///
    ///

    ///
    ///
    /// test deleteRequest
    ///
    ///
    test('deleteRequest returns valid response', () async {

      String testPath = 'user';
      MWUApiParameter testParams = UserDeleteParameters('it is not fun', 'dont want to tell');

      var response = await httpClient.deleteRequest(
        testPath,
        testParams
      );

      print(response);
      expect(response.statusCode, 200);
      expect(response.errorCode, isNull);
    });

    test('deleteRequest returns error', () async {

      String testPath = 'user';
      MWUApiParameter testParams = UserDeleteParameters('', '');

      var response = await httpClient.deleteRequest(
          testPath,
          testParams
      );
      print(response);
      expect(response.statusCode, 422);
      expect(response.errorCode, isNotNull);
      expect(response.errorCode, 'HTTP_UNPROCESSABLE_ENTITY');
      expect(response.message, 'The reason field is required.');
    });
  });
}
