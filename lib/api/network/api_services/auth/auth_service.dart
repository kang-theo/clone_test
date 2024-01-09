import 'package:dio/dio.dart';
import 'package:mwu/api/network/api_models/mwu_api_response_model/mwu_api_response_model.dart';
import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/network/api_services/auth/auth_request_models/register_parameters_model.dart';
import 'package:mwu/api/network/api_services/auth/auth_request_models/login_parameters_model.dart';

class AuthService {

  final HttpClient _httpClient = HttpClient();

  Future<MWUApiResponse<T>> reqLogin<T,U>(

      U loginParams,
      T Function(Map<String, dynamic>) fromJsonT,) async {
    try {
      Response response = await _httpClient.postRequest(
        'v1',
        'auth/login',
        params: loginParams,
        withAuth: false,
      );
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiResponse =
      MWUApiResponse<T>.fromDioResponse(response, fromJsonT!);

      return mwuApiResponse;
    } catch (e) {
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiError = MWUApiResponse<T>.fromException(e);

      return mwuApiError;
    }
  }

  Future<MWUApiResponse<T>> reqUser<T>(
      T Function(Map<String, dynamic>) fromJsonT) async {
    // for testing
    _httpClient.accessToken =
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hcGkuc3RhZ2luZy5ib2RpZXNieXJhY2hlbC5pbmZvXC9hcGlcL3YxXC9hdXRoXC9sb2dpbiIsImlhdCI6MTcwNDc5MDgxOCwiZXhwIjoxNzA4MjQ2ODE4LCJuYmYiOjE3MDQ3OTA4MTgsImp0aSI6InU0NkxoU2dld1lqREFrT0MiLCJzdWIiOjMzMzcyMCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.dTOy6RO8_NmLHadN-7QgjdAirg6OcjEEaeyP7Q3i90I";

    try {
      Response response = await _httpClient.getRequest(
        'v1',
        'auth/user',
      );
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiResponse =
      MWUApiResponse<T>.fromDioResponse(response, fromJsonT!);

      return mwuApiResponse;
    } catch (e) {
      // convert to mwuApiResponse
      MWUApiResponse<T> mwuApiError = MWUApiResponse<T>.fromException(e);

      return mwuApiError;
    }
  }


// Future<MWUApiResponse<T>> reqRegister<T>(
//
//     RegisterParams registerParams,
//
//     T Function(Map<String, dynamic>) fromJsonT,
//
//     ) async {
//   try {
//     Response response = await _httpClient.postRequest(
//       'v1',
//       'auth/register',
//       data: registerParams,
//       withAuth: false,
//     );
//     // convert to mwuApiResponse
//     MWUApiResponse<T> mwuApiResponse =
//     MWUApiResponse<T>.fromDioResponse(response, fromJsonT!);
//
//     return mwuApiResponse;
//
//   } catch(e) {
//
//
//     // convert to mwuApiResponse
//     MWUApiResponse<T> mwuApiError = MWUApiResponse<T>.fromException(e);
//
//     return mwuApiError;
//   }
// }
}