import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/network/api_services/user/user_delete_service/user_delete_parameters_model.dart';

class UserDeleteService {

  final HttpClient _httpClient = HttpClient();

  Future<dynamic> reqUserDelete(

      UserDeleteParameters userDeleteParameters,

      ) async {

    var response = await _httpClient.deleteRequest(
      'user',
      userDeleteParameters
    );

    if (response.statusCode == 200) {
      return response.data;
    }else{
      /// do something;
      throw Exception('${response.statusCode}');
    }
    /// } else if(response.statusCode == 401){
    ///   /// do something
    /// } else if(response.statusCode == 422){
    ///   /// do something
    /// }
  }

  /// other user delete helpers

}