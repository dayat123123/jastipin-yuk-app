import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String userID,
    required String username,
    String? email,
    String? phoneNumber,
    required String birthdate,
    required Gender gender,
    required Role role,
    String? profilePictureUrl,
    required bool emailVerified,
    required bool phoneVerified,
  }) = _UserData;
}
