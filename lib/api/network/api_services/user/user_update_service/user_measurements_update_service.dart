import 'package:mwu/api/network/api_protocols/http_client.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_services/user/user_update_service/user_measurements_update_parameters_model.dart';

class UserMeasurementsUpdateService {

  final HttpClient _httpClient = HttpClient();

  Future<UserModel?> reqUserMeasurementsUpdate(

      UserMeasurementsUpdateParameters userMeasurementUpdateParams,

      ) async {

    var response = await _httpClient.putRequest(
      'user/measurement-systems',
      userMeasurementUpdateParams,
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

/// other User Measurements Update helpers
}