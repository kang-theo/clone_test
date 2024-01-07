// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarModelImpl _$$AvatarModelImplFromJson(Map<String, dynamic> json) =>
    _$AvatarModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      fileName: json['file_name'] as String,
      collectionName: json['collection_name'] as String,
      mimeType: json['mime_type'] as String,
      size: json['size'] as int,
      createdAt: json['created_at'] as String,
      url: json['url'] as String,
      thumbUrl: json['thumb_url'] as String,
    );

Map<String, dynamic> _$$AvatarModelImplToJson(_$AvatarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file_name': instance.fileName,
      'collection_name': instance.collectionName,
      'mime_type': instance.mimeType,
      'size': instance.size,
      'created_at': instance.createdAt,
      'url': instance.url,
      'thumb_url': instance.thumbUrl,
    };
