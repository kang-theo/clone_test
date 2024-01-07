// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mwu_api_response_meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MWUApiResponseMeta _$MWUApiResponseMetaFromJson(Map<String, dynamic> json) {
  return _MWUApiResponseMeta.fromJson(json);
}

/// @nodoc
mixin _$MWUApiResponseMeta {
  @JsonKey(name: 'per_page')
  int? get itemsPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  int? get firstItemIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  int? get lastItemIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MWUApiResponseMetaCopyWith<MWUApiResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MWUApiResponseMetaCopyWith<$Res> {
  factory $MWUApiResponseMetaCopyWith(
          MWUApiResponseMeta value, $Res Function(MWUApiResponseMeta) then) =
      _$MWUApiResponseMetaCopyWithImpl<$Res, MWUApiResponseMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'per_page') int? itemsPerPage,
      @JsonKey(name: 'total') int? totalItems,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'from') int? firstItemIndex,
      @JsonKey(name: 'to') int? lastItemIndex});
}

/// @nodoc
class _$MWUApiResponseMetaCopyWithImpl<$Res, $Val extends MWUApiResponseMeta>
    implements $MWUApiResponseMetaCopyWith<$Res> {
  _$MWUApiResponseMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsPerPage = freezed,
    Object? totalItems = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
    Object? firstItemIndex = freezed,
    Object? lastItemIndex = freezed,
  }) {
    return _then(_value.copyWith(
      itemsPerPage: freezed == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      firstItemIndex: freezed == firstItemIndex
          ? _value.firstItemIndex
          : firstItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      lastItemIndex: freezed == lastItemIndex
          ? _value.lastItemIndex
          : lastItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MWUApiResponseMetaImplCopyWith<$Res>
    implements $MWUApiResponseMetaCopyWith<$Res> {
  factory _$$MWUApiResponseMetaImplCopyWith(_$MWUApiResponseMetaImpl value,
          $Res Function(_$MWUApiResponseMetaImpl) then) =
      __$$MWUApiResponseMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'per_page') int? itemsPerPage,
      @JsonKey(name: 'total') int? totalItems,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'from') int? firstItemIndex,
      @JsonKey(name: 'to') int? lastItemIndex});
}

/// @nodoc
class __$$MWUApiResponseMetaImplCopyWithImpl<$Res>
    extends _$MWUApiResponseMetaCopyWithImpl<$Res, _$MWUApiResponseMetaImpl>
    implements _$$MWUApiResponseMetaImplCopyWith<$Res> {
  __$$MWUApiResponseMetaImplCopyWithImpl(_$MWUApiResponseMetaImpl _value,
      $Res Function(_$MWUApiResponseMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemsPerPage = freezed,
    Object? totalItems = freezed,
    Object? currentPage = freezed,
    Object? lastPage = freezed,
    Object? firstItemIndex = freezed,
    Object? lastItemIndex = freezed,
  }) {
    return _then(_$MWUApiResponseMetaImpl(
      itemsPerPage: freezed == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      firstItemIndex: freezed == firstItemIndex
          ? _value.firstItemIndex
          : firstItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      lastItemIndex: freezed == lastItemIndex
          ? _value.lastItemIndex
          : lastItemIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MWUApiResponseMetaImpl implements _MWUApiResponseMeta {
  const _$MWUApiResponseMetaImpl(
      {@JsonKey(name: 'per_page') this.itemsPerPage,
      @JsonKey(name: 'total') this.totalItems,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'last_page') this.lastPage,
      @JsonKey(name: 'from') this.firstItemIndex,
      @JsonKey(name: 'to') this.lastItemIndex});

  factory _$MWUApiResponseMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MWUApiResponseMetaImplFromJson(json);

  @override
  @JsonKey(name: 'per_page')
  final int? itemsPerPage;
  @override
  @JsonKey(name: 'total')
  final int? totalItems;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'from')
  final int? firstItemIndex;
  @override
  @JsonKey(name: 'to')
  final int? lastItemIndex;

  @override
  String toString() {
    return 'MWUApiResponseMeta(itemsPerPage: $itemsPerPage, totalItems: $totalItems, currentPage: $currentPage, lastPage: $lastPage, firstItemIndex: $firstItemIndex, lastItemIndex: $lastItemIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MWUApiResponseMetaImpl &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.firstItemIndex, firstItemIndex) ||
                other.firstItemIndex == firstItemIndex) &&
            (identical(other.lastItemIndex, lastItemIndex) ||
                other.lastItemIndex == lastItemIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemsPerPage, totalItems,
      currentPage, lastPage, firstItemIndex, lastItemIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MWUApiResponseMetaImplCopyWith<_$MWUApiResponseMetaImpl> get copyWith =>
      __$$MWUApiResponseMetaImplCopyWithImpl<_$MWUApiResponseMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MWUApiResponseMetaImplToJson(
      this,
    );
  }
}

abstract class _MWUApiResponseMeta implements MWUApiResponseMeta {
  const factory _MWUApiResponseMeta(
          {@JsonKey(name: 'per_page') final int? itemsPerPage,
          @JsonKey(name: 'total') final int? totalItems,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'last_page') final int? lastPage,
          @JsonKey(name: 'from') final int? firstItemIndex,
          @JsonKey(name: 'to') final int? lastItemIndex}) =
      _$MWUApiResponseMetaImpl;

  factory _MWUApiResponseMeta.fromJson(Map<String, dynamic> json) =
      _$MWUApiResponseMetaImpl.fromJson;

  @override
  @JsonKey(name: 'per_page')
  int? get itemsPerPage;
  @override
  @JsonKey(name: 'total')
  int? get totalItems;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'from')
  int? get firstItemIndex;
  @override
  @JsonKey(name: 'to')
  int? get lastItemIndex;
  @override
  @JsonKey(ignore: true)
  _$$MWUApiResponseMetaImplCopyWith<_$MWUApiResponseMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
