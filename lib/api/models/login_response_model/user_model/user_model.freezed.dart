// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_system')
  int? get measurementSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_measurement_system')
  int? get bodyMeasurementSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'nutrition_measurement_system')
  int? get nutritionMeasurementSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_pregnancy_safe_labels')
  bool? get showPregnancySafeLabels => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_active_at')
  String? get lastActiveAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool? get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number_verified')
  bool? get phoneNumberVerified => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_permanent_url')
  String? get avatarPermanentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_permanent_thumb_url')
  String? get avatarPermanentThumbUrl => throw _privateConstructorUsedError;
  bool? get mine => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  bool? get reactivated => throw _privateConstructorUsedError;
  @JsonKey(name: 'program_count')
  int? get programCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pause_status')
  bool? get pauseStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_free_trial')
  bool? get usedFreeTrial => throw _privateConstructorUsedError;
  AvatarModel? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'show_pregnancy_safe_labels')
      bool? showPregnancySafeLabels,
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
      AvatarModel? avatar});

  $AvatarModelCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? birthday = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? measurementSystem = freezed,
    Object? bodyMeasurementSystem = freezed,
    Object? nutritionMeasurementSystem = freezed,
    Object? showPregnancySafeLabels = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? timezone = freezed,
    Object? lastActiveAt = freezed,
    Object? emailVerified = freezed,
    Object? phoneNumberVerified = freezed,
    Object? verified = freezed,
    Object? avatarPermanentUrl = freezed,
    Object? avatarPermanentThumbUrl = freezed,
    Object? mine = freezed,
    Object? age = freezed,
    Object? reactivated = freezed,
    Object? programCount = freezed,
    Object? pauseStatus = freezed,
    Object? usedFreeTrial = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementSystem: freezed == measurementSystem
          ? _value.measurementSystem
          : measurementSystem // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyMeasurementSystem: freezed == bodyMeasurementSystem
          ? _value.bodyMeasurementSystem
          : bodyMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int?,
      nutritionMeasurementSystem: freezed == nutritionMeasurementSystem
          ? _value.nutritionMeasurementSystem
          : nutritionMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int?,
      showPregnancySafeLabels: freezed == showPregnancySafeLabels
          ? _value.showPregnancySafeLabels
          : showPregnancySafeLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActiveAt: freezed == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumberVerified: freezed == phoneNumberVerified
          ? _value.phoneNumberVerified
          : phoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatarPermanentUrl: freezed == avatarPermanentUrl
          ? _value.avatarPermanentUrl
          : avatarPermanentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPermanentThumbUrl: freezed == avatarPermanentThumbUrl
          ? _value.avatarPermanentThumbUrl
          : avatarPermanentThumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mine: freezed == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as bool?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      reactivated: freezed == reactivated
          ? _value.reactivated
          : reactivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      programCount: freezed == programCount
          ? _value.programCount
          : programCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pauseStatus: freezed == pauseStatus
          ? _value.pauseStatus
          : pauseStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      usedFreeTrial: freezed == usedFreeTrial
          ? _value.usedFreeTrial
          : usedFreeTrial // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvatarModelCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarModelCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      @JsonKey(name: 'show_pregnancy_safe_labels')
      bool? showPregnancySafeLabels,
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
      AvatarModel? avatar});

  @override
  $AvatarModelCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? birthday = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? measurementSystem = freezed,
    Object? bodyMeasurementSystem = freezed,
    Object? nutritionMeasurementSystem = freezed,
    Object? showPregnancySafeLabels = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? timezone = freezed,
    Object? lastActiveAt = freezed,
    Object? emailVerified = freezed,
    Object? phoneNumberVerified = freezed,
    Object? verified = freezed,
    Object? avatarPermanentUrl = freezed,
    Object? avatarPermanentThumbUrl = freezed,
    Object? mine = freezed,
    Object? age = freezed,
    Object? reactivated = freezed,
    Object? programCount = freezed,
    Object? pauseStatus = freezed,
    Object? usedFreeTrial = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementSystem: freezed == measurementSystem
          ? _value.measurementSystem
          : measurementSystem // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyMeasurementSystem: freezed == bodyMeasurementSystem
          ? _value.bodyMeasurementSystem
          : bodyMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int?,
      nutritionMeasurementSystem: freezed == nutritionMeasurementSystem
          ? _value.nutritionMeasurementSystem
          : nutritionMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int?,
      showPregnancySafeLabels: freezed == showPregnancySafeLabels
          ? _value.showPregnancySafeLabels
          : showPregnancySafeLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActiveAt: freezed == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumberVerified: freezed == phoneNumberVerified
          ? _value.phoneNumberVerified
          : phoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatarPermanentUrl: freezed == avatarPermanentUrl
          ? _value.avatarPermanentUrl
          : avatarPermanentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarPermanentThumbUrl: freezed == avatarPermanentThumbUrl
          ? _value.avatarPermanentThumbUrl
          : avatarPermanentThumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mine: freezed == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as bool?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      reactivated: freezed == reactivated
          ? _value.reactivated
          : reactivated // ignore: cast_nullable_to_non_nullable
              as bool?,
      programCount: freezed == programCount
          ? _value.programCount
          : programCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pauseStatus: freezed == pauseStatus
          ? _value.pauseStatus
          : pauseStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      usedFreeTrial: freezed == usedFreeTrial
          ? _value.usedFreeTrial
          : usedFreeTrial // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'full_name') this.fullName,
      this.birthday,
      this.email,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'measurement_system') this.measurementSystem,
      @JsonKey(name: 'body_measurement_system') this.bodyMeasurementSystem,
      @JsonKey(name: 'nutrition_measurement_system')
      this.nutritionMeasurementSystem,
      @JsonKey(name: 'show_pregnancy_safe_labels') this.showPregnancySafeLabels,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.timezone,
      @JsonKey(name: 'last_active_at') this.lastActiveAt,
      @JsonKey(name: 'email_verified') this.emailVerified,
      @JsonKey(name: 'phone_number_verified') this.phoneNumberVerified,
      this.verified,
      @JsonKey(name: 'avatar_permanent_url') this.avatarPermanentUrl,
      @JsonKey(name: 'avatar_permanent_thumb_url') this.avatarPermanentThumbUrl,
      this.mine,
      this.age,
      this.reactivated,
      @JsonKey(name: 'program_count') this.programCount,
      @JsonKey(name: 'pause_status') this.pauseStatus,
      @JsonKey(name: 'used_free_trial') this.usedFreeTrial,
      this.avatar});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  final String? birthday;
  @override
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'measurement_system')
  final int? measurementSystem;
  @override
  @JsonKey(name: 'body_measurement_system')
  final int? bodyMeasurementSystem;
  @override
  @JsonKey(name: 'nutrition_measurement_system')
  final int? nutritionMeasurementSystem;
  @override
  @JsonKey(name: 'show_pregnancy_safe_labels')
  final bool? showPregnancySafeLabels;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String? timezone;
  @override
  @JsonKey(name: 'last_active_at')
  final String? lastActiveAt;
  @override
  @JsonKey(name: 'email_verified')
  final bool? emailVerified;
  @override
  @JsonKey(name: 'phone_number_verified')
  final bool? phoneNumberVerified;
  @override
  final bool? verified;
  @override
  @JsonKey(name: 'avatar_permanent_url')
  final String? avatarPermanentUrl;
  @override
  @JsonKey(name: 'avatar_permanent_thumb_url')
  final String? avatarPermanentThumbUrl;
  @override
  final bool? mine;
  @override
  final int? age;
  @override
  final bool? reactivated;
  @override
  @JsonKey(name: 'program_count')
  final int? programCount;
  @override
  @JsonKey(name: 'pause_status')
  final bool? pauseStatus;
  @override
  @JsonKey(name: 'used_free_trial')
  final bool? usedFreeTrial;
  @override
  final AvatarModel? avatar;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, birthday: $birthday, email: $email, phoneNumber: $phoneNumber, measurementSystem: $measurementSystem, bodyMeasurementSystem: $bodyMeasurementSystem, nutritionMeasurementSystem: $nutritionMeasurementSystem, showPregnancySafeLabels: $showPregnancySafeLabels, createdAt: $createdAt, updatedAt: $updatedAt, timezone: $timezone, lastActiveAt: $lastActiveAt, emailVerified: $emailVerified, phoneNumberVerified: $phoneNumberVerified, verified: $verified, avatarPermanentUrl: $avatarPermanentUrl, avatarPermanentThumbUrl: $avatarPermanentThumbUrl, mine: $mine, age: $age, reactivated: $reactivated, programCount: $programCount, pauseStatus: $pauseStatus, usedFreeTrial: $usedFreeTrial, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.measurementSystem, measurementSystem) ||
                other.measurementSystem == measurementSystem) &&
            (identical(other.bodyMeasurementSystem, bodyMeasurementSystem) ||
                other.bodyMeasurementSystem == bodyMeasurementSystem) &&
            (identical(other.nutritionMeasurementSystem,
                    nutritionMeasurementSystem) ||
                other.nutritionMeasurementSystem ==
                    nutritionMeasurementSystem) &&
            (identical(
                    other.showPregnancySafeLabels, showPregnancySafeLabels) ||
                other.showPregnancySafeLabels == showPregnancySafeLabels) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.lastActiveAt, lastActiveAt) ||
                other.lastActiveAt == lastActiveAt) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneNumberVerified, phoneNumberVerified) ||
                other.phoneNumberVerified == phoneNumberVerified) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.avatarPermanentUrl, avatarPermanentUrl) ||
                other.avatarPermanentUrl == avatarPermanentUrl) &&
            (identical(
                    other.avatarPermanentThumbUrl, avatarPermanentThumbUrl) ||
                other.avatarPermanentThumbUrl == avatarPermanentThumbUrl) &&
            (identical(other.mine, mine) || other.mine == mine) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.reactivated, reactivated) ||
                other.reactivated == reactivated) &&
            (identical(other.programCount, programCount) ||
                other.programCount == programCount) &&
            (identical(other.pauseStatus, pauseStatus) ||
                other.pauseStatus == pauseStatus) &&
            (identical(other.usedFreeTrial, usedFreeTrial) ||
                other.usedFreeTrial == usedFreeTrial) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        fullName,
        birthday,
        email,
        phoneNumber,
        measurementSystem,
        bodyMeasurementSystem,
        nutritionMeasurementSystem,
        showPregnancySafeLabels,
        createdAt,
        updatedAt,
        timezone,
        lastActiveAt,
        emailVerified,
        phoneNumberVerified,
        verified,
        avatarPermanentUrl,
        avatarPermanentThumbUrl,
        mine,
        age,
        reactivated,
        programCount,
        pauseStatus,
        usedFreeTrial,
        avatar
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'full_name') final String? fullName,
      final String? birthday,
      final String? email,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'measurement_system') final int? measurementSystem,
      @JsonKey(name: 'body_measurement_system')
      final int? bodyMeasurementSystem,
      @JsonKey(name: 'nutrition_measurement_system')
      final int? nutritionMeasurementSystem,
      @JsonKey(name: 'show_pregnancy_safe_labels')
      final bool? showPregnancySafeLabels,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final String? timezone,
      @JsonKey(name: 'last_active_at') final String? lastActiveAt,
      @JsonKey(name: 'email_verified') final bool? emailVerified,
      @JsonKey(name: 'phone_number_verified') final bool? phoneNumberVerified,
      final bool? verified,
      @JsonKey(name: 'avatar_permanent_url') final String? avatarPermanentUrl,
      @JsonKey(name: 'avatar_permanent_thumb_url')
      final String? avatarPermanentThumbUrl,
      final bool? mine,
      final int? age,
      final bool? reactivated,
      @JsonKey(name: 'program_count') final int? programCount,
      @JsonKey(name: 'pause_status') final bool? pauseStatus,
      @JsonKey(name: 'used_free_trial') final bool? usedFreeTrial,
      final AvatarModel? avatar}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  String? get birthday;
  @override
  String? get email;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'measurement_system')
  int? get measurementSystem;
  @override
  @JsonKey(name: 'body_measurement_system')
  int? get bodyMeasurementSystem;
  @override
  @JsonKey(name: 'nutrition_measurement_system')
  int? get nutritionMeasurementSystem;
  @override
  @JsonKey(name: 'show_pregnancy_safe_labels')
  bool? get showPregnancySafeLabels;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String? get timezone;
  @override
  @JsonKey(name: 'last_active_at')
  String? get lastActiveAt;
  @override
  @JsonKey(name: 'email_verified')
  bool? get emailVerified;
  @override
  @JsonKey(name: 'phone_number_verified')
  bool? get phoneNumberVerified;
  @override
  bool? get verified;
  @override
  @JsonKey(name: 'avatar_permanent_url')
  String? get avatarPermanentUrl;
  @override
  @JsonKey(name: 'avatar_permanent_thumb_url')
  String? get avatarPermanentThumbUrl;
  @override
  bool? get mine;
  @override
  int? get age;
  @override
  bool? get reactivated;
  @override
  @JsonKey(name: 'program_count')
  int? get programCount;
  @override
  @JsonKey(name: 'pause_status')
  bool? get pauseStatus;
  @override
  @JsonKey(name: 'used_free_trial')
  bool? get usedFreeTrial;
  @override
  AvatarModel? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
