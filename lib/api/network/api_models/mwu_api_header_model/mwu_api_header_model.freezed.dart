// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mwu_api_header_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MWUApiHeaderModel {
  String get contentType => throw _privateConstructorUsedError;

  String? get accessToken => throw _privateConstructorUsedError;

  String? get timezone => throw _privateConstructorUsedError;

  String get mwuUserResponse => throw _privateConstructorUsedError;

  String? get platform => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MWUApiHeaderModelCopyWith<MWUApiHeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MWUApiHeaderModelCopyWith<$Res> {
  factory $MWUApiHeaderModelCopyWith(
          MWUApiHeaderModel value, $Res Function(MWUApiHeaderModel) then) =
      _$MWUApiHeaderModelCopyWithImpl<$Res, MWUApiHeaderModel>;

  @useResult
  $Res call(
      {String contentType,
      String? accessToken,
      String? timezone,
      String mwuUserResponse,
      String? platform});
}

/// @nodoc
class _$MWUApiHeaderModelCopyWithImpl<$Res, $Val extends MWUApiHeaderModel>
    implements $MWUApiHeaderModelCopyWith<$Res> {
  _$MWUApiHeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? accessToken = freezed,
    Object? timezone = freezed,
    Object? mwuUserResponse = null,
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      mwuUserResponse: null == mwuUserResponse
          ? _value.mwuUserResponse
          : mwuUserResponse // ignore: cast_nullable_to_non_nullable
              as String,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MWUApiHeaderModelImplCopyWith<$Res>
    implements $MWUApiHeaderModelCopyWith<$Res> {
  factory _$$MWUApiHeaderModelImplCopyWith(_$MWUApiHeaderModelImpl value,
          $Res Function(_$MWUApiHeaderModelImpl) then) =
      __$$MWUApiHeaderModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String contentType,
      String? accessToken,
      String? timezone,
      String mwuUserResponse,
      String? platform});
}

/// @nodoc
class __$$MWUApiHeaderModelImplCopyWithImpl<$Res>
    extends _$MWUApiHeaderModelCopyWithImpl<$Res, _$MWUApiHeaderModelImpl>
    implements _$$MWUApiHeaderModelImplCopyWith<$Res> {
  __$$MWUApiHeaderModelImplCopyWithImpl(_$MWUApiHeaderModelImpl _value,
      $Res Function(_$MWUApiHeaderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? accessToken = freezed,
    Object? timezone = freezed,
    Object? mwuUserResponse = null,
    Object? platform = freezed,
  }) {
    return _then(_$MWUApiHeaderModelImpl(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      mwuUserResponse: null == mwuUserResponse
          ? _value.mwuUserResponse
          : mwuUserResponse // ignore: cast_nullable_to_non_nullable
              as String,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MWUApiHeaderModelImpl implements _MWUApiHeaderModel {
  const _$MWUApiHeaderModelImpl(
      {this.contentType = 'application/json',
      this.accessToken,
      this.timezone,
      this.mwuUserResponse = 'v2',
      this.platform});

  @override
  @JsonKey()
  final String contentType;
  @override
  final String? accessToken;
  @override
  final String? timezone;
  @override
  @JsonKey()
  final String mwuUserResponse;
  @override
  final String? platform;

  @override
  String toString() {
    return 'MWUApiHeaderModel(contentType: $contentType, accessToken: $accessToken, timezone: $timezone, mwuUserResponse: $mwuUserResponse, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MWUApiHeaderModelImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.mwuUserResponse, mwuUserResponse) ||
                other.mwuUserResponse == mwuUserResponse) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentType, accessToken,
      timezone, mwuUserResponse, platform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MWUApiHeaderModelImplCopyWith<_$MWUApiHeaderModelImpl> get copyWith =>
      __$$MWUApiHeaderModelImplCopyWithImpl<_$MWUApiHeaderModelImpl>(
          this, _$identity);

  @override
  Map<String, String> toMap({bool withAuth = true}) {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}

abstract class _MWUApiHeaderModel implements MWUApiHeaderModel {
  const factory _MWUApiHeaderModel(
      {final String contentType,
      final String? accessToken,
      final String? timezone,
      final String mwuUserResponse,
      final String? platform}) = _$MWUApiHeaderModelImpl;

  @override
  String get contentType;

  @override
  String? get accessToken;

  @override
  String? get timezone;

  @override
  String get mwuUserResponse;

  @override
  String? get platform;

  @override
  @JsonKey(ignore: true)
  _$$MWUApiHeaderModelImplCopyWith<_$MWUApiHeaderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
