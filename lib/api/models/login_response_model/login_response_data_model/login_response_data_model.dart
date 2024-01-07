import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_model/user_model.dart';

part 'login_response_data_model.freezed.dart';
part 'login_response_data_model.g.dart';

@freezed
class LoginResponseDataModel with _$LoginResponseDataModel {
  const factory LoginResponseDataModel({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'token_type') String? tokenType,
    @JsonKey(name: 'expires_in') String? expiresIn,
    UserModel? user,
  }) = _LoginResponseDataModel;

  factory LoginResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataModelFromJson(json);
}
