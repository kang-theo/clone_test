// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mwu_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MWUApiResponse<T> {
  T? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'http_status')
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_code')
  String? get errorCode => throw _privateConstructorUsedError;
  MWUApiResponseMeta? get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MWUApiResponseCopyWith<T, MWUApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MWUApiResponseCopyWith<T, $Res> {
  factory $MWUApiResponseCopyWith(
          MWUApiResponse<T> value, $Res Function(MWUApiResponse<T>) then) =
      _$MWUApiResponseCopyWithImpl<T, $Res, MWUApiResponse<T>>;
  @useResult
  $Res call(
      {T? data,
      @JsonKey(name: 'http_status') int statusCode,
      String message,
      Map<String, List<String>>? errors,
      @JsonKey(name: 'error_code') String? errorCode,
      MWUApiResponseMeta? meta});

  $MWUApiResponseMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$MWUApiResponseCopyWithImpl<T, $Res, $Val extends MWUApiResponse<T>>
    implements $MWUApiResponseCopyWith<T, $Res> {
  _$MWUApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = null,
    Object? message = null,
    Object? errors = freezed,
    Object? errorCode = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MWUApiResponseMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MWUApiResponseMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MWUApiResponseMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MWUApiResponseImplCopyWith<T, $Res>
    implements $MWUApiResponseCopyWith<T, $Res> {
  factory _$$MWUApiResponseImplCopyWith(_$MWUApiResponseImpl<T> value,
          $Res Function(_$MWUApiResponseImpl<T>) then) =
      __$$MWUApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {T? data,
      @JsonKey(name: 'http_status') int statusCode,
      String message,
      Map<String, List<String>>? errors,
      @JsonKey(name: 'error_code') String? errorCode,
      MWUApiResponseMeta? meta});

  @override
  $MWUApiResponseMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$MWUApiResponseImplCopyWithImpl<T, $Res>
    extends _$MWUApiResponseCopyWithImpl<T, $Res, _$MWUApiResponseImpl<T>>
    implements _$$MWUApiResponseImplCopyWith<T, $Res> {
  __$$MWUApiResponseImplCopyWithImpl(_$MWUApiResponseImpl<T> _value,
      $Res Function(_$MWUApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = null,
    Object? message = null,
    Object? errors = freezed,
    Object? errorCode = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$MWUApiResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MWUApiResponseMeta?,
    ));
  }
}

/// @nodoc

class _$MWUApiResponseImpl<T> implements _MWUApiResponse<T> {
  const _$MWUApiResponseImpl(
      {this.data,
      @JsonKey(name: 'http_status') required this.statusCode,
      this.message = '',
      final Map<String, List<String>>? errors,
      @JsonKey(name: 'error_code') this.errorCode,
      this.meta})
      : _errors = errors;

  @override
  final T? data;
  @override
  @JsonKey(name: 'http_status')
  final int statusCode;
  @override
  @JsonKey()
  final String message;
  final Map<String, List<String>>? _errors;
  @override
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'error_code')
  final String? errorCode;
  @override
  final MWUApiResponseMeta? meta;

  @override
  String toString() {
    return 'MWUApiResponse<$T>(data: $data, statusCode: $statusCode, message: $message, errors: $errors, errorCode: $errorCode, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MWUApiResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      statusCode,
      message,
      const DeepCollectionEquality().hash(_errors),
      errorCode,
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MWUApiResponseImplCopyWith<T, _$MWUApiResponseImpl<T>> get copyWith =>
      __$$MWUApiResponseImplCopyWithImpl<T, _$MWUApiResponseImpl<T>>(
          this, _$identity);
}

abstract class _MWUApiResponse<T> implements MWUApiResponse<T> {
  const factory _MWUApiResponse(
      {final T? data,
      @JsonKey(name: 'http_status') required final int statusCode,
      final String message,
      final Map<String, List<String>>? errors,
      @JsonKey(name: 'error_code') final String? errorCode,
      final MWUApiResponseMeta? meta}) = _$MWUApiResponseImpl<T>;

  @override
  T? get data;
  @override
  @JsonKey(name: 'http_status')
  int get statusCode;
  @override
  String get message;
  @override
  Map<String, List<String>>? get errors;
  @override
  @JsonKey(name: 'error_code')
  String? get errorCode;
  @override
  MWUApiResponseMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$MWUApiResponseImplCopyWith<T, _$MWUApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
