// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseDataModel _$LoginResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _LoginResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDataModel {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  String? get expiresIn => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataModelCopyWith<LoginResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataModelCopyWith<$Res> {
  factory $LoginResponseDataModelCopyWith(LoginResponseDataModel value,
          $Res Function(LoginResponseDataModel) then) =
      _$LoginResponseDataModelCopyWithImpl<$Res, LoginResponseDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') String? expiresIn,
      UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginResponseDataModelCopyWithImpl<$Res,
        $Val extends LoginResponseDataModel>
    implements $LoginResponseDataModelCopyWith<$Res> {
  _$LoginResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseDataModelImplCopyWith<$Res>
    implements $LoginResponseDataModelCopyWith<$Res> {
  factory _$$LoginResponseDataModelImplCopyWith(
          _$LoginResponseDataModelImpl value,
          $Res Function(_$LoginResponseDataModelImpl) then) =
      __$$LoginResponseDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') String? expiresIn,
      UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginResponseDataModelImplCopyWithImpl<$Res>
    extends _$LoginResponseDataModelCopyWithImpl<$Res,
        _$LoginResponseDataModelImpl>
    implements _$$LoginResponseDataModelImplCopyWith<$Res> {
  __$$LoginResponseDataModelImplCopyWithImpl(
      _$LoginResponseDataModelImpl _value,
      $Res Function(_$LoginResponseDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? user = freezed,
  }) {
    return _then(_$LoginResponseDataModelImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseDataModelImpl implements _LoginResponseDataModel {
  const _$LoginResponseDataModelImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'expires_in') this.expiresIn,
      this.user});

  factory _$LoginResponseDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final String? expiresIn;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'LoginResponseDataModel(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseDataModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, tokenType, expiresIn, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseDataModelImplCopyWith<_$LoginResponseDataModelImpl>
      get copyWith => __$$LoginResponseDataModelImplCopyWithImpl<
          _$LoginResponseDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseDataModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseDataModel implements LoginResponseDataModel {
  const factory _LoginResponseDataModel(
      {@JsonKey(name: 'access_token') final String? accessToken,
      @JsonKey(name: 'token_type') final String? tokenType,
      @JsonKey(name: 'expires_in') final String? expiresIn,
      final UserModel? user}) = _$LoginResponseDataModelImpl;

  factory _LoginResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String? get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  String? get expiresIn;
  @override
  UserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseDataModelImplCopyWith<_$LoginResponseDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
