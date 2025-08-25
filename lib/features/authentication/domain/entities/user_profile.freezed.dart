// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get userID => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get birthdate => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool get phoneVerified => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
    UserProfile value,
    $Res Function(UserProfile) then,
  ) = _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({
    String userID,
    String username,
    String? bio,
    String? displayName,
    String? email,
    String? phoneNumber,
    DateTime? birthdate,
    Role role,
    Gender gender,
    String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? username = null,
    Object? bio = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? birthdate = freezed,
    Object? role = null,
    Object? gender = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            bio:
                freezed == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as String?,
            displayName:
                freezed == displayName
                    ? _value.displayName
                    : displayName // ignore: cast_nullable_to_non_nullable
                        as String?,
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
                freezed == birthdate
                    ? _value.birthdate
                    : birthdate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as Role,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as Gender,
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
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
    _$UserProfileImpl value,
    $Res Function(_$UserProfileImpl) then,
  ) = __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userID,
    String username,
    String? bio,
    String? displayName,
    String? email,
    String? phoneNumber,
    DateTime? birthdate,
    Role role,
    Gender gender,
    String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
    _$UserProfileImpl _value,
    $Res Function(_$UserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? username = null,
    Object? bio = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? birthdate = freezed,
    Object? role = null,
    Object? gender = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserProfileImpl(
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
        bio:
            freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as String?,
        displayName:
            freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                    as String?,
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
            freezed == birthdate
                ? _value.birthdate
                : birthdate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as Role,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as Gender,
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
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl({
    required this.userID,
    required this.username,
    this.bio,
    this.displayName,
    this.email,
    this.phoneNumber,
    this.birthdate,
    required this.role,
    required this.gender,
    this.profilePictureUrl,
    required this.emailVerified,
    required this.phoneVerified,
    this.createdAt,
    this.updatedAt,
  });

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String userID;
  @override
  final String username;
  @override
  final String? bio;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final DateTime? birthdate;
  @override
  final Role role;
  @override
  final Gender gender;
  @override
  final String? profilePictureUrl;
  @override
  final bool emailVerified;
  @override
  final bool phoneVerified;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserProfile(userID: $userID, username: $username, bio: $bio, displayName: $displayName, email: $email, phoneNumber: $phoneNumber, birthdate: $birthdate, role: $role, gender: $gender, profilePictureUrl: $profilePictureUrl, emailVerified: $emailVerified, phoneVerified: $phoneVerified, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userID,
    username,
    bio,
    displayName,
    email,
    phoneNumber,
    birthdate,
    role,
    gender,
    profilePictureUrl,
    emailVerified,
    phoneVerified,
    createdAt,
    updatedAt,
  );

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile({
    required final String userID,
    required final String username,
    final String? bio,
    final String? displayName,
    final String? email,
    final String? phoneNumber,
    final DateTime? birthdate,
    required final Role role,
    required final Gender gender,
    final String? profilePictureUrl,
    required final bool emailVerified,
    required final bool phoneVerified,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get userID;
  @override
  String get username;
  @override
  String? get bio;
  @override
  String? get displayName;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  DateTime? get birthdate;
  @override
  Role get role;
  @override
  Gender get gender;
  @override
  String? get profilePictureUrl;
  @override
  bool get emailVerified;
  @override
  bool get phoneVerified;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
