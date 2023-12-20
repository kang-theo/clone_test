import 'package:freezed_annotation/freezed_annotation.dart';

part 'mwu_api_response_model.freezed.dart';
part 'mwu_api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class MWUApiResponse<T> with _$MWUApiResponse<T> {
  const factory MWUApiResponse({
    T? data,
    required int statusCode,
    @Default('') String? message,
    Map<String, List<String>>? errors,
    String? errorCode,
    Meta? meta,
  }) = MWUApiResponseData;

  factory MWUApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$MWUApiResponseFromJson(json, fromJsonT);
}

@freezed
class Meta with _$Meta {
  const factory Meta() = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
