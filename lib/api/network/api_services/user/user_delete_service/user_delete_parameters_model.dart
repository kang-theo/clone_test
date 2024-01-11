import 'package:mwu/api/network/api_models/mwu_api_request_parameter_model/mwu_api_request_parameter_model.dart';

class UserDeleteDataParameters {
  final String reason;
  final String details;

  UserDeleteDataParameters(this.reason, this.details);

  Map<String, dynamic> toJson() => {'reason': reason, 'details': details};
}

class UserDeleteParameters extends MWUApiParameter<dynamic, UserDeleteDataParameters> {
  UserDeleteParameters(String reason, String details)
      : super(
    queryParameters: null,
    dataParameters: UserDeleteDataParameters(reason, details),
  );
}
