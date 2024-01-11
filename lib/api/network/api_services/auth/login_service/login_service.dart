import 'package:mwu/api/models/login_response_model/login_response_data_model/login_response_data_model.dart';
import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/network/api_services/auth/login_service/login_parameters_model.dart';

class LoginService {

  final HttpClient _httpClient = HttpClient();

  Future<LoginResponseDataModel?> reqLogin(

      LoginParameters loginParams,

      ) async {

      var response = await _httpClient.postRequest(
        'auth/login',
        loginParams,
        fromJsonT: LoginResponseDataModel.fromJson,
      );

      if (response.statusCode == 200) {
        return response.data;
      }else{
        print("do something");
        throw Exception('${response.statusCode}');
      }
      /// } else if(response.statusCode == 401){
      ///   // do something
      /// }
  }

  /// other login helpers
}