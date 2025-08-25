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
        return 'M';
      case Gender.female:
        return 'F';
    }
  }

  static Gender fromString(String value) {
    switch (value.toUpperCase()) {
      case 'M':
        return Gender.male;
      case 'F':
        return Gender.female;
      default:
        throw ArgumentError('Unknown gender string: $value');
    }
  }
}
