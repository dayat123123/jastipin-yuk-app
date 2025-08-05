enum Role { customer, jastiper, admin, guest }

extension RoleX on Role {
  String get label {
    switch (this) {
      case Role.customer:
        return 'Customer';
      case Role.jastiper:
        return 'Jastiper';
      case Role.admin:
        return 'Admin';
      case Role.guest:
        return 'Guest';
    }
  }

  String get value {
    switch (this) {
      case Role.customer:
        return 'customer';
      case Role.jastiper:
        return 'jastiper';
      case Role.admin:
        return 'admin';
      case Role.guest:
        return 'guest';
    }
  }

  static Role fromString(String value) {
    switch (value.toUpperCase()) {
      case 'CUSTOMER':
        return Role.customer;
      case 'JASTIPER':
        return Role.jastiper;
      case 'ADMIN':
        return Role.admin;
      case 'GUEST':
        return Role.guest;
      default:
        throw ArgumentError('Unknown role string: $value');
    }
  }

  bool get isJastiper => this == Role.jastiper;
  bool get isCustomer => this == Role.customer;
  bool get isGuest => this == Role.guest;
}
