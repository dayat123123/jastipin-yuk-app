import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';

class UpdateUserProfileParam {
  final String userId;
  final String userName;
  final String email;
  final String phoneNumber;
  final Gender gender;
  final DateTime birthDate;
  final String bio;
  final String displayName;

  UpdateUserProfileParam({
    required this.userId,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.birthDate,
    required this.bio,
    required this.displayName,
  });
}
