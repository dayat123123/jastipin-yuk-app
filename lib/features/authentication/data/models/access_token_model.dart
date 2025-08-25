import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/access_token_data.dart';

part 'access_token_model.freezed.dart';
part 'access_token_model.g.dart';

@freezed
class AccessTokenModel with _$AccessTokenModel {
  const factory AccessTokenModel({
    required String accessToken,
    required String refreshToken,
  }) = _AccessTokenModel;

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenModelFromJson(json);
}

extension AccessTokenModelMapper on AccessTokenModel {
  AccessTokenData toEntity() {
    return AccessTokenData(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
