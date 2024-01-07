import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_base_model.freezed.dart';
part 'user_base_model.g.dart';

@freezed
class UserBaseModel with _$UserBaseModel {
  const factory UserBaseModel({
    required int id,
    String? firstName,
    String? lastName,
    required String fullName,
    required String birthday,
    required String email,
    String? phoneNumber,
    required int measurementSystem,
    @JsonKey(name: 'body_measurement_system')
    required int bodyMeasurementSystem,
    @JsonKey(name: 'nutrition_measurement_system')
    required int nutritionMeasurementSystem,
    @JsonKey(name: 'show_pregnancy_safe_labels') bool? showPregnancySafeLabels,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required String timezone,
    @JsonKey(name: 'last_active_at') required String lastActiveAt,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    @JsonKey(name: 'phone_number_verified') required bool phoneNumberVerified,
    required bool verified,
    @JsonKey(name: 'avatar_permanent_url') required String avatarPermanentUrl,
    @JsonKey(name: 'avatar_permanent_thumb_url')
    required String avatarPermanentThumbUrl,
    required bool mine,
    required int age,
    required bool reactivated,
    @JsonKey(name: 'program_count') required int programCount,
    @JsonKey(name: 'pause_status') bool? pauseStatus,
    @JsonKey(name: 'used_free_trial') required bool usedFreeTrial,
  }) = _UserBaseModel;

  factory UserBaseModel.fromJson(Map<String, dynamic> json) =>
      _$UserBaseModelFromJson(json);
}
