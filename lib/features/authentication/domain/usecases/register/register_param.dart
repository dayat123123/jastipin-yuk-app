import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/role.dart';

class RegisterParam {
  final String username;
  final String password;
  final Gender gender;
  final Role role;
  final DateTime birthdate;

  const RegisterParam({
    required this.username,
    required this.password,
    required this.gender,
    required this.role,
    required this.birthdate,
  });
}
