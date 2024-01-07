import 'package:freezed_annotation/freezed_annotation.dart';

import '../avatar_model/avatar_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'full_name') String? fullName,
    String? birthday,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'measurement_system') int? measurementSystem,
    @JsonKey(name: 'body_measurement_system') int? bodyMeasurementSystem,
    @JsonKey(name: 'nutrition_measurement_system')
    int? nutritionMeasurementSystem,
    @JsonKey(name: 'show_pregnancy_safe_labels') bool? showPregnancySafeLabels,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? timezone,
    @JsonKey(name: 'last_active_at') String? lastActiveAt,
    @JsonKey(name: 'email_verified') bool? emailVerified,
    @JsonKey(name: 'phone_number_verified') bool? phoneNumberVerified,
    bool? verified,
    @JsonKey(name: 'avatar_permanent_url') String? avatarPermanentUrl,
    @JsonKey(name: 'avatar_permanent_thumb_url')
    String? avatarPermanentThumbUrl,
    bool? mine,
    int? age,
    bool? reactivated,
    @JsonKey(name: 'program_count') int? programCount,
    @JsonKey(name: 'pause_status') bool? pauseStatus,
    @JsonKey(name: 'used_free_trial') bool? usedFreeTrial,
    AvatarModel? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
