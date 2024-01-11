import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';

class UserGetService {

  final HttpClient _httpClient = HttpClient();

  Future<UserModel?> reqUserGet(

    MWUApiParameter testParams

      ) async {

    var response = await _httpClient.getRequest(
      'auth/user',
      testParams,
      fromJsonT: UserModel.fromJson,
    );

    if (response.statusCode == 200) {
      return response.data;
    }else{
      print("do something");
      throw Exception('${response.statusCode}');
    }
    /// } else if(response.statusCode == 401){
    ///   /// do something
    /// } else if(response.statusCode == 422){
    ///   /// do something
    /// }
  }

/// other User get helpers
}