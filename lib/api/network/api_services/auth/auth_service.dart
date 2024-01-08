import 'package:dio/dio.dart';
import 'package:mwu/api/network/api_models/api_request_methods_model/api_request_methods_model.dart';
import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';
import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/network/api_protocols/dio_client.dart';
import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';

class AuthService {

  Future<MWUApiResponse<T>> reqLogin<T>(
    String username,
    String password,
    T Function(Map<String, dynamic>) fromJsonT,
    // Function(MWUApiResponse<T>)? onSuccess,
    // Function(MWUApiResponse<T>)? onError,
    ) async {
    try {
      Response response = await HttpClient().request(
      'v1',
      'auth/login',
      method: HttpMethod.post,
      data: {
      'username': username,
      'password': password,
      },
      withAuth: false,
      );
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiResponse =
      MWUApiResponse<T>.fromDioResponse(response, fromJsonT!);

      // print('test1: ${response.data['data']}');
      print('test2: ${response.statusCode}');
      print('test3: ${response.statusMessage}');
      print('test4: ${mwuApiResponse.statusCode}');
      print('test5: ${mwuApiResponse.message}');


      return mwuApiResponse;

      } catch(e) {

      // convert to mwuApiResponse
        MWUApiResponse<T> mwuApiError = MWUApiResponse<T>.fromException(e);


        print('test1: ${e}');
        print('test2: ${mwuApiError.statusCode}');
        print('test3: ${mwuApiError.message}');
        print('test4: ${mwuApiError.errorCode}');
        print('test5: ${mwuApiError.data}');

        return mwuApiError;
      }
  }

  Future<MWUApiResponse<T>> reqUser<T>(
      T Function(Map<String, dynamic>) fromJsonT) async {

    HttpClient httpClient = HttpClient();
    // for testing
    httpClient.accessToken =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hcGkuc3RhZ2luZy5ib2RpZXNieXJhY2hlbC5pbmZvXC9hcGlcL3YxXC9hdXRoXC9sb2dpbiIsImlhdCI6MTcwNDY4NDU2NSwiZXhwIjoxNzA4MTQwNTY1LCJuYmYiOjE3MDQ2ODQ1NjUsImp0aSI6IkJsQ2R4aG1BSXN6ZHVkTDgiLCJzdWIiOjMzMzcyMCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.mvl5niLjlo274_xcCFyci5eCQ8COvJwrBIXHxG-kB44";


      try {
        Response response = await httpClient.request(
          'v1',
          'auth/user',
        );
        // convert to mwuApiResponse
        MWUApiResponse<T> mwuApiResponse =
        MWUApiResponse<T>.fromDioResponse(response, fromJsonT!);

        // print('test1: ${response.data['data']}');
        print('test2: ${response.statusCode}');
        print('test3: ${response.statusMessage}');
        print('test4: ${mwuApiResponse.statusCode}');
        print('test5: ${mwuApiResponse.message}');


        return mwuApiResponse;

      } catch(e) {

        // convert to mwuApiResponse
        MWUApiResponse<T> mwuApiError = MWUApiResponse<T>.fromException(e);


        print('test1: ${e}');
        print('test2: ${mwuApiError.statusCode}');
        print('test3: ${mwuApiError.message}');
        print('test4: ${mwuApiError.errorCode}');
        print('test5: ${mwuApiError.data}');

        return mwuApiError;
      }
  }

// Future<MWUApiResponse<dynamic>> register(String email, String password) async {
//
// }

// Future<MWUApiResponse<dynamic>> changePassword(String oldPassword, String newPassword) async {
//
// }
//
//
// Future<MWUApiResponse<dynamic>> sendVerificationCode(String email) async {
//
// }
//
//
// Future<MWUApiResponse<dynamic>> verifyEmail(String email, String verificationCode) async {
//
// }
}
