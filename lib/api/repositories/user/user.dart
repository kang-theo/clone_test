import 'package:mwu/api/network/api_services/user/user_delete_service/user_delete_service.dart';
import 'package:mwu/api/network/api_services/user/user_update_service/user_measurements_update_service.dart';
import 'package:mwu/api/network/api_services/user/user_delete_service/user_delete_parameters_model.dart';
import 'package:mwu/api/network/api_services/user/user_update_service/user_measurements_update_parameters_model.dart';


class UserRepository implements Exception {

  final UserDeleteService _userDeleteService = UserDeleteService();
  final UserMeasurementsUpdateService _userMeasurementsUpdateService = UserMeasurementsUpdateService();
  ///final OtherUserServices _otherServices = OtherServices();

  Future<dynamic> userDelete(
      String reason, String details) async {
      dynamic response = await _userDeleteService
          .reqUserDelete(
          UserDeleteParameters(reason, details)
      );
      return response;
  }

  Future<dynamic> userUpdateMeasurements(
      int bodyMeasurementSystem, int nutritionMeasurementSystem) async {
    dynamic response = await _userMeasurementsUpdateService
        .reqUserMeasurementsUpdate(
        UserMeasurementsUpdateParameters(bodyMeasurementSystem, nutritionMeasurementSystem)
    );
    return response;
  }
  ///Future<OtherUserResponseModel?> otherUserFunc(){};
}
