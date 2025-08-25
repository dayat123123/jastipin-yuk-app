import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/google_account_data.dart';

part 'google_account_model.freezed.dart';

@freezed
class GoogleAccountModel with _$GoogleAccountModel {
  const factory GoogleAccountModel({
    required String uid,
    required bool emailVerified,
    required String email,
    required String idToken,
    String? photoURL,
    String? displayName,
  }) = _GoogleAccountModel;
}

extension GoogleAccountModelMapper on GoogleAccountModel {
  GoogleAccountData toEntity() {
    return GoogleAccountData(
      uid: uid,
      emailVerified: emailVerified,
      email: email,
      idToken: idToken,
      displayName: displayName,
      photoURL: photoURL,
    );
  }
}
