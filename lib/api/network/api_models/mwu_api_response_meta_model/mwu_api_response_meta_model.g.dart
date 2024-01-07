// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mwu_api_response_meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MWUApiResponseMetaImpl _$$MWUApiResponseMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$MWUApiResponseMetaImpl(
      itemsPerPage: json['per_page'] as int?,
      totalItems: json['total'] as int?,
      currentPage: json['current_page'] as int?,
      lastPage: json['last_page'] as int?,
      firstItemIndex: json['from'] as int?,
      lastItemIndex: json['to'] as int?,
    );

Map<String, dynamic> _$$MWUApiResponseMetaImplToJson(
        _$MWUApiResponseMetaImpl instance) =>
    <String, dynamic>{
      'per_page': instance.itemsPerPage,
      'total': instance.totalItems,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.firstItemIndex,
      'to': instance.lastItemIndex,
    };
