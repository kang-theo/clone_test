import 'package:freezed_annotation/freezed_annotation.dart';

part 'mwu_api_response_meta_model.freezed.dart';
part 'mwu_api_response_meta_model.g.dart';

@freezed
class MWUApiResponseMeta with _$MWUApiResponseMeta {
  const factory MWUApiResponseMeta({
    @JsonKey(name: 'per_page') int? itemsPerPage,
    @JsonKey(name: 'total') int? totalItems,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'from') int? firstItemIndex,
    @JsonKey(name: 'to') int? lastItemIndex,
  }) = _MWUApiResponseMeta;

  factory MWUApiResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$MWUApiResponseMetaFromJson(json);
}
