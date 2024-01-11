import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';

class LoginDataParameters {
  final String username;
  final String password;

  LoginDataParameters(this.username, this.password);

  Map<String, dynamic> toJson() => {'username': username, 'password': password};
}

class LoginParameters extends MWUApiParameter<dynamic, LoginDataParameters> {
  LoginParameters(String username, String password)
      : super(
    queryParameters: null,
    dataParameters: LoginDataParameters(username, password),
    withAuth: false,
  );
}
