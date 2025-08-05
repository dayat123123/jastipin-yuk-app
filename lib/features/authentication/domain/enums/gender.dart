enum Gender { male, female }

extension GenderX on Gender {
  String get label {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
    }
  }

  String get value {
    switch (this) {
      case Gender.male:
        return 'male';
      case Gender.female:
        return 'female';
    }
  }

  static Gender fromString(String value) {
    switch (value.toUpperCase()) {
      case 'MALE':
        return Gender.male;
      case 'FEMALE':
        return Gender.female;
      default:
        throw ArgumentError('Unknown gender string: $value');
    }
  }
}
