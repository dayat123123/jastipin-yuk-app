// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserData {
  String get userID => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool get phoneVerified => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({
    String userID,
    String username,
    String? email,
    String? phoneNumber,
    String birthdate,
    Gender gender,
    Role role,
    String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
  });
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? username = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? birthdate = null,
    Object? gender = null,
    Object? role = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
  }) {
    return _then(
      _value.copyWith(
            userID:
                null == userID
                    ? _value.userID
                    : userID // ignore: cast_nullable_to_non_nullable
                        as String,
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            birthdate:
                null == birthdate
                    ? _value.birthdate
                    : birthdate // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as Gender,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as Role,
            profilePictureUrl:
                freezed == profilePictureUrl
                    ? _value.profilePictureUrl
                    : profilePictureUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            emailVerified:
                null == emailVerified
                    ? _value.emailVerified
                    : emailVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
            phoneVerified:
                null == phoneVerified
                    ? _value.phoneVerified
                    : phoneVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
    _$UserDataImpl value,
    $Res Function(_$UserDataImpl) then,
  ) = __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userID,
    String username,
    String? email,
    String? phoneNumber,
    String birthdate,
    Gender gender,
    Role role,
    String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
  });
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
    _$UserDataImpl _value,
    $Res Function(_$UserDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? username = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? birthdate = null,
    Object? gender = null,
    Object? role = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
  }) {
    return _then(
      _$UserDataImpl(
        userID:
            null == userID
                ? _value.userID
                : userID // ignore: cast_nullable_to_non_nullable
                    as String,
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        birthdate:
            null == birthdate
                ? _value.birthdate
                : birthdate // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as Gender,
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as Role,
        profilePictureUrl:
            freezed == profilePictureUrl
                ? _value.profilePictureUrl
                : profilePictureUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        emailVerified:
            null == emailVerified
                ? _value.emailVerified
                : emailVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
        phoneVerified:
            null == phoneVerified
                ? _value.phoneVerified
                : phoneVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$UserDataImpl implements _UserData {
  const _$UserDataImpl({
    required this.userID,
    required this.username,
    this.email,
    this.phoneNumber,
    required this.birthdate,
    required this.gender,
    required this.role,
    this.profilePictureUrl,
    required this.emailVerified,
    required this.phoneVerified,
  });

  @override
  final String userID;
  @override
  final String username;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String birthdate;
  @override
  final Gender gender;
  @override
  final Role role;
  @override
  final String? profilePictureUrl;
  @override
  final bool emailVerified;
  @override
  final bool phoneVerified;

  @override
  String toString() {
    return 'UserData(userID: $userID, username: $username, email: $email, phoneNumber: $phoneNumber, birthdate: $birthdate, gender: $gender, role: $role, profilePictureUrl: $profilePictureUrl, emailVerified: $emailVerified, phoneVerified: $phoneVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userID,
    username,
    email,
    phoneNumber,
    birthdate,
    gender,
    role,
    profilePictureUrl,
    emailVerified,
    phoneVerified,
  );

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData({
    required final String userID,
    required final String username,
    final String? email,
    final String? phoneNumber,
    required final String birthdate,
    required final Gender gender,
    required final Role role,
    final String? profilePictureUrl,
    required final bool emailVerified,
    required final bool phoneVerified,
  }) = _$UserDataImpl;

  @override
  String get userID;
  @override
  String get username;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String get birthdate;
  @override
  Gender get gender;
  @override
  Role get role;
  @override
  String? get profilePictureUrl;
  @override
  bool get emailVerified;
  @override
  bool get phoneVerified;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
