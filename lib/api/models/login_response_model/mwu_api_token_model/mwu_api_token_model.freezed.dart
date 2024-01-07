// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mwu_api_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MWUApiToken _$MWUApiTokenFromJson(Map<String, dynamic> json) {
  return _MWUApiToken.fromJson(json);
}

/// @nodoc
mixin _$MWUApiToken {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  String? get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MWUApiTokenCopyWith<MWUApiToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MWUApiTokenCopyWith<$Res> {
  factory $MWUApiTokenCopyWith(
          MWUApiToken value, $Res Function(MWUApiToken) then) =
      _$MWUApiTokenCopyWithImpl<$Res, MWUApiToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') String? expiresIn});
}

/// @nodoc
class _$MWUApiTokenCopyWithImpl<$Res, $Val extends MWUApiToken>
    implements $MWUApiTokenCopyWith<$Res> {
  _$MWUApiTokenCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MWUApiTokenImplCopyWith<$Res>
    implements $MWUApiTokenCopyWith<$Res> {
  factory _$$MWUApiTokenImplCopyWith(
          _$MWUApiTokenImpl value, $Res Function(_$MWUApiTokenImpl) then) =
      __$$MWUApiTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'token_type') String? tokenType,
      @JsonKey(name: 'expires_in') String? expiresIn});
}

/// @nodoc
class __$$MWUApiTokenImplCopyWithImpl<$Res>
    extends _$MWUApiTokenCopyWithImpl<$Res, _$MWUApiTokenImpl>
    implements _$$MWUApiTokenImplCopyWith<$Res> {
  __$$MWUApiTokenImplCopyWithImpl(
      _$MWUApiTokenImpl _value, $Res Function(_$MWUApiTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_$MWUApiTokenImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MWUApiTokenImpl implements _MWUApiToken {
  const _$MWUApiTokenImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'expires_in') this.expiresIn});

  factory _$MWUApiTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$MWUApiTokenImplFromJson(json);

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
  String toString() {
    return 'MWUApiToken(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MWUApiTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, tokenType, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MWUApiTokenImplCopyWith<_$MWUApiTokenImpl> get copyWith =>
      __$$MWUApiTokenImplCopyWithImpl<_$MWUApiTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MWUApiTokenImplToJson(
      this,
    );
  }
}

abstract class _MWUApiToken implements MWUApiToken {
  const factory _MWUApiToken(
          {@JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'token_type') final String? tokenType,
          @JsonKey(name: 'expires_in') final String? expiresIn}) =
      _$MWUApiTokenImpl;

  factory _MWUApiToken.fromJson(Map<String, dynamic> json) =
      _$MWUApiTokenImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$MWUApiTokenImplCopyWith<_$MWUApiTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
