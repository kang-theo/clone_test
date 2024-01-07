import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_model.freezed.dart';
part 'avatar_model.g.dart';

@freezed
class AvatarModel with _$AvatarModel {
  const factory AvatarModel({
    required int id,
    required String name,
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'collection_name') required String collectionName,
    @JsonKey(name: 'mime_type') required String mimeType,
    required int size,
    @JsonKey(name: 'created_at') required String createdAt,
    required String url,
    @JsonKey(name: 'thumb_url') required String thumbUrl,
  }) = _AvatarModel;

  factory AvatarModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarModelFromJson(json);
}
