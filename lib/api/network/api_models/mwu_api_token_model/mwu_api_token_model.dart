import 'package:freezed_annotation/freezed_annotation.dart';

part 'mwu_api_token_model.freezed.dart';
part 'mwu_api_token_model.g.dart';

@freezed
class MWUApiToken with _$MWUApiToken {
  const factory MWUApiToken({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'token_type') String? tokenType,
    @JsonKey(name: 'expires_in') String? expiresIn,
  }) = _MWUApiToken;

  factory MWUApiToken.fromJson(Map<String, dynamic> json) =>
      _$MWUApiTokenFromJson(json);

  static MWUApiToken fromJsonDynamic(dynamic json) {
    return MWUApiToken.fromJson(json as Map<String, dynamic>);
  }
}
