import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/api/models/login_response_model/user_model/user_model.dart';
import 'package:mwu/api/repositories/user/user.dart';



void main() {
  late UserRepository userRepository;

  setUp(() {
    userRepository = UserRepository();
  });

  group('UserRepository Test', () {

    // delete user
    test('Successfully delete user', () async {
      var response = await userRepository.userDelete(
        "it is not fun",
        "no details want to tell",
      );
      expect(response, isNull);
    });

    // update user measurements
    test('Successfully update user measurements', () async {
      var response = await userRepository.userUpdateMeasurements(2,2);
      expect(response, isA<UserModel>());
    });

  });
}
