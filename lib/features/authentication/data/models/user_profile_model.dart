import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    @JsonKey(name: "userID") required String userId,
    required String username,
    String? email,
    String? phoneNumber,
    required String role,
    required String birthdate,
    required String gender,
    @JsonKey(name: 'profilePictureURL') String? profilePictureUrl,
    required bool emailVerified,
    required bool phoneVerified,
    required String createdAt,
    String? updatedAt,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

extension UserProfileModelMapper on UserProfileModel {
  UserProfile toEntity() {
    return UserProfile(
      userID: userId,
      username: username,
      email: email,
      phoneNumber: phoneNumber,
      role: RoleX.fromString(role),
      birthdate: DateTime.tryParse(birthdate),
      gender: GenderX.fromString(gender),
      profilePictureUrl: profilePictureUrl,
      emailVerified: emailVerified,
      phoneVerified: phoneVerified,
      createdAt: DateTime.tryParse(createdAt),
      updatedAt: DateTime.tryParse(updatedAt ?? ''),
    );
  }
}
