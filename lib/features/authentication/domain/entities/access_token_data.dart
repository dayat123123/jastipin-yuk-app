import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/data/models/access_token_model.dart';

part 'access_token_data.freezed.dart';
part 'access_token_data.g.dart';

@freezed
class AccessTokenData with _$AccessTokenData {
  const factory AccessTokenData({
    required String accessToken,
    required String refreshToken,
  }) = _AccessTokenData;

  factory AccessTokenData.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenDataFromJson(json);
}

extension AccessTokenDataMapper on AccessTokenData {
  AccessTokenModel toModel() {
    return AccessTokenModel(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
