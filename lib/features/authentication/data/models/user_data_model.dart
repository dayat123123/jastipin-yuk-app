import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  const factory UserDataModel({
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
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}

extension UserDataModelMapper on UserDataModel {
  UserData toEntity() {
    return UserData(
      userID: userId,
      username: username,
      email: email,
      phoneNumber: phoneNumber,
      role: RoleX.fromString(role),
      birthdate: birthdate,
      gender: GenderX.fromString(gender),
      profilePictureUrl: profilePictureUrl,
      emailVerified: emailVerified,
      phoneVerified: phoneVerified,
    );
  }
}
