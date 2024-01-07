// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBaseModel _$UserBaseModelFromJson(Map<String, dynamic> json) {
  return _UserBaseModel.fromJson(json);
}

/// @nodoc
mixin _$UserBaseModel {
  int get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int get measurementSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_measurement_system')
  int get bodyMeasurementSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'nutrition_measurement_system')
  int get nutritionMeasurementSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_pregnancy_safe_labels')
  bool? get showPregnancySafeLabels => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_active_at')
  String get lastActiveAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number_verified')
  bool get phoneNumberVerified => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_permanent_url')
  String get avatarPermanentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_permanent_thumb_url')
  String get avatarPermanentThumbUrl => throw _privateConstructorUsedError;
  bool get mine => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  bool get reactivated => throw _privateConstructorUsedError;
  @JsonKey(name: 'program_count')
  int get programCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pause_status')
  bool? get pauseStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_free_trial')
  bool get usedFreeTrial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBaseModelCopyWith<UserBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBaseModelCopyWith<$Res> {
  factory $UserBaseModelCopyWith(
          UserBaseModel value, $Res Function(UserBaseModel) then) =
      _$UserBaseModelCopyWithImpl<$Res, UserBaseModel>;
  @useResult
  $Res call(
      {int id,
      String? firstName,
      String? lastName,
      String fullName,
      String birthday,
      String email,
      String? phoneNumber,
      int measurementSystem,
      @JsonKey(name: 'body_measurement_system') int bodyMeasurementSystem,
      @JsonKey(name: 'nutrition_measurement_system')
      int nutritionMeasurementSystem,
      @JsonKey(name: 'show_pregnancy_safe_labels')
      bool? showPregnancySafeLabels,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String timezone,
      @JsonKey(name: 'last_active_at') String lastActiveAt,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone_number_verified') bool phoneNumberVerified,
      bool verified,
      @JsonKey(name: 'avatar_permanent_url') String avatarPermanentUrl,
      @JsonKey(name: 'avatar_permanent_thumb_url')
      String avatarPermanentThumbUrl,
      bool mine,
      int age,
      bool reactivated,
      @JsonKey(name: 'program_count') int programCount,
      @JsonKey(name: 'pause_status') bool? pauseStatus,
      @JsonKey(name: 'used_free_trial') bool usedFreeTrial});
}

/// @nodoc
class _$UserBaseModelCopyWithImpl<$Res, $Val extends UserBaseModel>
    implements $UserBaseModelCopyWith<$Res> {
  _$UserBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = null,
    Object? birthday = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? measurementSystem = null,
    Object? bodyMeasurementSystem = null,
    Object? nutritionMeasurementSystem = null,
    Object? showPregnancySafeLabels = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? timezone = null,
    Object? lastActiveAt = null,
    Object? emailVerified = null,
    Object? phoneNumberVerified = null,
    Object? verified = null,
    Object? avatarPermanentUrl = null,
    Object? avatarPermanentThumbUrl = null,
    Object? mine = null,
    Object? age = null,
    Object? reactivated = null,
    Object? programCount = null,
    Object? pauseStatus = freezed,
    Object? usedFreeTrial = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementSystem: null == measurementSystem
          ? _value.measurementSystem
          : measurementSystem // ignore: cast_nullable_to_non_nullable
              as int,
      bodyMeasurementSystem: null == bodyMeasurementSystem
          ? _value.bodyMeasurementSystem
          : bodyMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int,
      nutritionMeasurementSystem: null == nutritionMeasurementSystem
          ? _value.nutritionMeasurementSystem
          : nutritionMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int,
      showPregnancySafeLabels: freezed == showPregnancySafeLabels
          ? _value.showPregnancySafeLabels
          : showPregnancySafeLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      lastActiveAt: null == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberVerified: null == phoneNumberVerified
          ? _value.phoneNumberVerified
          : phoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarPermanentUrl: null == avatarPermanentUrl
          ? _value.avatarPermanentUrl
          : avatarPermanentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPermanentThumbUrl: null == avatarPermanentThumbUrl
          ? _value.avatarPermanentThumbUrl
          : avatarPermanentThumbUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mine: null == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as bool,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      reactivated: null == reactivated
          ? _value.reactivated
          : reactivated // ignore: cast_nullable_to_non_nullable
              as bool,
      programCount: null == programCount
          ? _value.programCount
          : programCount // ignore: cast_nullable_to_non_nullable
              as int,
      pauseStatus: freezed == pauseStatus
          ? _value.pauseStatus
          : pauseStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      usedFreeTrial: null == usedFreeTrial
          ? _value.usedFreeTrial
          : usedFreeTrial // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBaseModelImplCopyWith<$Res>
    implements $UserBaseModelCopyWith<$Res> {
  factory _$$UserBaseModelImplCopyWith(
          _$UserBaseModelImpl value, $Res Function(_$UserBaseModelImpl) then) =
      __$$UserBaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? firstName,
      String? lastName,
      String fullName,
      String birthday,
      String email,
      String? phoneNumber,
      int measurementSystem,
      @JsonKey(name: 'body_measurement_system') int bodyMeasurementSystem,
      @JsonKey(name: 'nutrition_measurement_system')
      int nutritionMeasurementSystem,
      @JsonKey(name: 'show_pregnancy_safe_labels')
      bool? showPregnancySafeLabels,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String timezone,
      @JsonKey(name: 'last_active_at') String lastActiveAt,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone_number_verified') bool phoneNumberVerified,
      bool verified,
      @JsonKey(name: 'avatar_permanent_url') String avatarPermanentUrl,
      @JsonKey(name: 'avatar_permanent_thumb_url')
      String avatarPermanentThumbUrl,
      bool mine,
      int age,
      bool reactivated,
      @JsonKey(name: 'program_count') int programCount,
      @JsonKey(name: 'pause_status') bool? pauseStatus,
      @JsonKey(name: 'used_free_trial') bool usedFreeTrial});
}

/// @nodoc
class __$$UserBaseModelImplCopyWithImpl<$Res>
    extends _$UserBaseModelCopyWithImpl<$Res, _$UserBaseModelImpl>
    implements _$$UserBaseModelImplCopyWith<$Res> {
  __$$UserBaseModelImplCopyWithImpl(
      _$UserBaseModelImpl _value, $Res Function(_$UserBaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = null,
    Object? birthday = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? measurementSystem = null,
    Object? bodyMeasurementSystem = null,
    Object? nutritionMeasurementSystem = null,
    Object? showPregnancySafeLabels = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? timezone = null,
    Object? lastActiveAt = null,
    Object? emailVerified = null,
    Object? phoneNumberVerified = null,
    Object? verified = null,
    Object? avatarPermanentUrl = null,
    Object? avatarPermanentThumbUrl = null,
    Object? mine = null,
    Object? age = null,
    Object? reactivated = null,
    Object? programCount = null,
    Object? pauseStatus = freezed,
    Object? usedFreeTrial = null,
  }) {
    return _then(_$UserBaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementSystem: null == measurementSystem
          ? _value.measurementSystem
          : measurementSystem // ignore: cast_nullable_to_non_nullable
              as int,
      bodyMeasurementSystem: null == bodyMeasurementSystem
          ? _value.bodyMeasurementSystem
          : bodyMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int,
      nutritionMeasurementSystem: null == nutritionMeasurementSystem
          ? _value.nutritionMeasurementSystem
          : nutritionMeasurementSystem // ignore: cast_nullable_to_non_nullable
              as int,
      showPregnancySafeLabels: freezed == showPregnancySafeLabels
          ? _value.showPregnancySafeLabels
          : showPregnancySafeLabels // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      lastActiveAt: null == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberVerified: null == phoneNumberVerified
          ? _value.phoneNumberVerified
          : phoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarPermanentUrl: null == avatarPermanentUrl
          ? _value.avatarPermanentUrl
          : avatarPermanentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPermanentThumbUrl: null == avatarPermanentThumbUrl
          ? _value.avatarPermanentThumbUrl
          : avatarPermanentThumbUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mine: null == mine
          ? _value.mine
          : mine // ignore: cast_nullable_to_non_nullable
              as bool,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      reactivated: null == reactivated
          ? _value.reactivated
          : reactivated // ignore: cast_nullable_to_non_nullable
              as bool,
      programCount: null == programCount
          ? _value.programCount
          : programCount // ignore: cast_nullable_to_non_nullable
              as int,
      pauseStatus: freezed == pauseStatus
          ? _value.pauseStatus
          : pauseStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      usedFreeTrial: null == usedFreeTrial
          ? _value.usedFreeTrial
          : usedFreeTrial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBaseModelImpl implements _UserBaseModel {
  const _$UserBaseModelImpl(
      {required this.id,
      this.firstName,
      this.lastName,
      required this.fullName,
      required this.birthday,
      required this.email,
      this.phoneNumber,
      required this.measurementSystem,
      @JsonKey(name: 'body_measurement_system')
      required this.bodyMeasurementSystem,
      @JsonKey(name: 'nutrition_measurement_system')
      required this.nutritionMeasurementSystem,
      @JsonKey(name: 'show_pregnancy_safe_labels') this.showPregnancySafeLabels,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.timezone,
      @JsonKey(name: 'last_active_at') required this.lastActiveAt,
      @JsonKey(name: 'email_verified') required this.emailVerified,
      @JsonKey(name: 'phone_number_verified') required this.phoneNumberVerified,
      required this.verified,
      @JsonKey(name: 'avatar_permanent_url') required this.avatarPermanentUrl,
      @JsonKey(name: 'avatar_permanent_thumb_url')
      required this.avatarPermanentThumbUrl,
      required this.mine,
      required this.age,
      required this.reactivated,
      @JsonKey(name: 'program_count') required this.programCount,
      @JsonKey(name: 'pause_status') this.pauseStatus,
      @JsonKey(name: 'used_free_trial') required this.usedFreeTrial});

  factory _$UserBaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBaseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String fullName;
  @override
  final String birthday;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final int measurementSystem;
  @override
  @JsonKey(name: 'body_measurement_system')
  final int bodyMeasurementSystem;
  @override
  @JsonKey(name: 'nutrition_measurement_system')
  final int nutritionMeasurementSystem;
  @override
  @JsonKey(name: 'show_pregnancy_safe_labels')
  final bool? showPregnancySafeLabels;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'last_active_at')
  final String lastActiveAt;
  @override
  @JsonKey(name: 'email_verified')
  final bool emailVerified;
  @override
  @JsonKey(name: 'phone_number_verified')
  final bool phoneNumberVerified;
  @override
  final bool verified;
  @override
  @JsonKey(name: 'avatar_permanent_url')
  final String avatarPermanentUrl;
  @override
  @JsonKey(name: 'avatar_permanent_thumb_url')
  final String avatarPermanentThumbUrl;
  @override
  final bool mine;
  @override
  final int age;
  @override
  final bool reactivated;
  @override
  @JsonKey(name: 'program_count')
  final int programCount;
  @override
  @JsonKey(name: 'pause_status')
  final bool? pauseStatus;
  @override
  @JsonKey(name: 'used_free_trial')
  final bool usedFreeTrial;

  @override
  String toString() {
    return 'UserBaseModel(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, birthday: $birthday, email: $email, phoneNumber: $phoneNumber, measurementSystem: $measurementSystem, bodyMeasurementSystem: $bodyMeasurementSystem, nutritionMeasurementSystem: $nutritionMeasurementSystem, showPregnancySafeLabels: $showPregnancySafeLabels, createdAt: $createdAt, updatedAt: $updatedAt, timezone: $timezone, lastActiveAt: $lastActiveAt, emailVerified: $emailVerified, phoneNumberVerified: $phoneNumberVerified, verified: $verified, avatarPermanentUrl: $avatarPermanentUrl, avatarPermanentThumbUrl: $avatarPermanentThumbUrl, mine: $mine, age: $age, reactivated: $reactivated, programCount: $programCount, pauseStatus: $pauseStatus, usedFreeTrial: $usedFreeTrial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBaseModelImpl &&
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
                other.usedFreeTrial == usedFreeTrial));
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
        usedFreeTrial
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBaseModelImplCopyWith<_$UserBaseModelImpl> get copyWith =>
      __$$UserBaseModelImplCopyWithImpl<_$UserBaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBaseModelImplToJson(
      this,
    );
  }
}

abstract class _UserBaseModel implements UserBaseModel {
  const factory _UserBaseModel(
      {required final int id,
      final String? firstName,
      final String? lastName,
      required final String fullName,
      required final String birthday,
      required final String email,
      final String? phoneNumber,
      required final int measurementSystem,
      @JsonKey(name: 'body_measurement_system')
      required final int bodyMeasurementSystem,
      @JsonKey(name: 'nutrition_measurement_system')
      required final int nutritionMeasurementSystem,
      @JsonKey(name: 'show_pregnancy_safe_labels')
      final bool? showPregnancySafeLabels,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final String timezone,
      @JsonKey(name: 'last_active_at') required final String lastActiveAt,
      @JsonKey(name: 'email_verified') required final bool emailVerified,
      @JsonKey(name: 'phone_number_verified')
      required final bool phoneNumberVerified,
      required final bool verified,
      @JsonKey(name: 'avatar_permanent_url')
      required final String avatarPermanentUrl,
      @JsonKey(name: 'avatar_permanent_thumb_url')
      required final String avatarPermanentThumbUrl,
      required final bool mine,
      required final int age,
      required final bool reactivated,
      @JsonKey(name: 'program_count') required final int programCount,
      @JsonKey(name: 'pause_status') final bool? pauseStatus,
      @JsonKey(name: 'used_free_trial')
      required final bool usedFreeTrial}) = _$UserBaseModelImpl;

  factory _UserBaseModel.fromJson(Map<String, dynamic> json) =
      _$UserBaseModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String get fullName;
  @override
  String get birthday;
  @override
  String get email;
  @override
  String? get phoneNumber;
  @override
  int get measurementSystem;
  @override
  @JsonKey(name: 'body_measurement_system')
  int get bodyMeasurementSystem;
  @override
  @JsonKey(name: 'nutrition_measurement_system')
  int get nutritionMeasurementSystem;
  @override
  @JsonKey(name: 'show_pregnancy_safe_labels')
  bool? get showPregnancySafeLabels;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String get timezone;
  @override
  @JsonKey(name: 'last_active_at')
  String get lastActiveAt;
  @override
  @JsonKey(name: 'email_verified')
  bool get emailVerified;
  @override
  @JsonKey(name: 'phone_number_verified')
  bool get phoneNumberVerified;
  @override
  bool get verified;
  @override
  @JsonKey(name: 'avatar_permanent_url')
  String get avatarPermanentUrl;
  @override
  @JsonKey(name: 'avatar_permanent_thumb_url')
  String get avatarPermanentThumbUrl;
  @override
  bool get mine;
  @override
  int get age;
  @override
  bool get reactivated;
  @override
  @JsonKey(name: 'program_count')
  int get programCount;
  @override
  @JsonKey(name: 'pause_status')
  bool? get pauseStatus;
  @override
  @JsonKey(name: 'used_free_trial')
  bool get usedFreeTrial;
  @override
  @JsonKey(ignore: true)
  _$$UserBaseModelImplCopyWith<_$UserBaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
