// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBaseModelImpl _$$UserBaseModelImplFromJson(Map<String, dynamic> json) =>
    _$UserBaseModelImpl(
      id: json['id'] as int,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      fullName: json['fullName'] as String,
      birthday: json['birthday'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      measurementSystem: json['measurementSystem'] as int,
      bodyMeasurementSystem: json['body_measurement_system'] as int,
      nutritionMeasurementSystem: json['nutrition_measurement_system'] as int,
      showPregnancySafeLabels: json['show_pregnancy_safe_labels'] as bool?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      timezone: json['timezone'] as String,
      lastActiveAt: json['last_active_at'] as String,
      emailVerified: json['email_verified'] as bool,
      phoneNumberVerified: json['phone_number_verified'] as bool,
      verified: json['verified'] as bool,
      avatarPermanentUrl: json['avatar_permanent_url'] as String,
      avatarPermanentThumbUrl: json['avatar_permanent_thumb_url'] as String,
      mine: json['mine'] as bool,
      age: json['age'] as int,
      reactivated: json['reactivated'] as bool,
      programCount: json['program_count'] as int,
      pauseStatus: json['pause_status'] as bool?,
      usedFreeTrial: json['used_free_trial'] as bool,
    );

Map<String, dynamic> _$$UserBaseModelImplToJson(_$UserBaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'birthday': instance.birthday,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'measurementSystem': instance.measurementSystem,
      'body_measurement_system': instance.bodyMeasurementSystem,
      'nutrition_measurement_system': instance.nutritionMeasurementSystem,
      'show_pregnancy_safe_labels': instance.showPregnancySafeLabels,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'timezone': instance.timezone,
      'last_active_at': instance.lastActiveAt,
      'email_verified': instance.emailVerified,
      'phone_number_verified': instance.phoneNumberVerified,
      'verified': instance.verified,
      'avatar_permanent_url': instance.avatarPermanentUrl,
      'avatar_permanent_thumb_url': instance.avatarPermanentThumbUrl,
      'mine': instance.mine,
      'age': instance.age,
      'reactivated': instance.reactivated,
      'program_count': instance.programCount,
      'pause_status': instance.pauseStatus,
      'used_free_trial': instance.usedFreeTrial,
    };
