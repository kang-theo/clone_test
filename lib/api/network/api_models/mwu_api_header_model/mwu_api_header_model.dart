import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mwu_api_header_model.freezed.dart';

@freezed
class MWUApiHeaderModel with _$MWUApiHeaderModel {
  const factory MWUApiHeaderModel({
    @Default('application/json') String contentType,
    String? accessToken,
    String? timezone,
    @Default('v2') String mwuUserResponse,
    String? platform,
  }) = _MWUApiHeaderModel;
}

extension MWUApiHeaderModelExtension on MWUApiHeaderModel {
  Map<String, String> toMap({bool withAuth = true}) {
    final headers = <String, String>{
      'Content-Type': contentType,
      'Timezone': timezone ?? DateTime
          .now()
          .timeZoneName,
      'MWU-User-Response': mwuUserResponse,
      'platform': platform ?? (Platform.isIOS ? 'IOS' : 'ANDROID'),
    };

    if (contentType == 'application/json') {
      headers['Accept'] = 'application/json';
    }

    if (withAuth && accessToken != null) {
      headers['Authorization'] = 'Bearer $accessToken';
    }

    return headers;
  }
}

