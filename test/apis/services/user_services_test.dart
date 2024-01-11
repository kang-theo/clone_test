import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/network/api_services/user/user_delete_service/user_delete_parameters_model.dart';
import 'package:mwu/api/network/api_services/user/user_delete_service/user_delete_service.dart';
import 'package:mwu/api/network/api_services/user/user_update_service/user_measurements_update_service.dart';
import 'package:mwu/api/network/api_services/user/user_update_service/user_measurements_update_parameters_model.dart';



void main() {
  late UserDeleteService userDeleteService;
  late UserMeasurementsUpdateService userMeasurementsUpdateService;

  setUp(() {
    userDeleteService = UserDeleteService();
    userMeasurementsUpdateService = UserMeasurementsUpdateService();
  });

  group('user services test', () {

    // user delete test
    test('Successful delete user', () async {
      var response = await userDeleteService.reqUserDelete(
        UserDeleteParameters("reason", "details"),
      );
      print(response);
      expect(response, isNull);
    });

    test('Fail to delete user', () async {
      expect(
        userDeleteService.reqUserDelete(UserDeleteParameters("", ""),),
        throwsA(
          predicate(
                (e) => e is Exception && e.toString().contains('422'),
          ),
        ),
      );
    });

    // user update measurements test
    test('Successfully update user measurements', () async {
      var response = await userMeasurementsUpdateService.reqUserMeasurementsUpdate(
        UserMeasurementsUpdateParameters(1, 2),
      );
      print(response);
      expect(response, isA<UserModel>);
    });

    test('Fail to update user measurements', () async {
      expect(
        userMeasurementsUpdateService.reqUserMeasurementsUpdate(UserMeasurementsUpdateParameters(10, 10),),
        throwsA(
          predicate(
                (e) => e is Exception && e.toString().contains('422'),
          ),
        ),
      );
    });

  });
}
