import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_account_data.freezed.dart';

@freezed
class GoogleAccountData with _$GoogleAccountData {
  const factory GoogleAccountData({
    required String uid,
    required bool emailVerified,
    required String email,
    required String idToken,
    String? photoURL,
    String? displayName,
  }) = _GoogleAccountData;
}
