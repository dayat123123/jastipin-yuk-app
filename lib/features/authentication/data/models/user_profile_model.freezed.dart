// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  @JsonKey(name: "userID")
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePictureURL')
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool get phoneVerified => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
    UserProfileModel value,
    $Res Function(UserProfileModel) then,
  ) = _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call({
    @JsonKey(name: "userID") String userId,
    String username,
    String? bio,
    String? displayName,
    String? email,
    String? phoneNumber,
    String role,
    String birthdate,
    String gender,
    @JsonKey(name: 'profilePictureURL') String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
    String createdAt,
    String? updatedAt,
  });
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? bio = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? role = null,
    Object? birthdate = null,
    Object? gender = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
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
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String,
            birthdate:
                null == birthdate
                    ? _value.birthdate
                    : birthdate // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
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
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileModelImplCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$UserProfileModelImplCopyWith(
    _$UserProfileModelImpl value,
    $Res Function(_$UserProfileModelImpl) then,
  ) = __$$UserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "userID") String userId,
    String username,
    String? bio,
    String? displayName,
    String? email,
    String? phoneNumber,
    String role,
    String birthdate,
    String gender,
    @JsonKey(name: 'profilePictureURL') String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
    String createdAt,
    String? updatedAt,
  });
}

/// @nodoc
class __$$UserProfileModelImplCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$UserProfileModelImpl>
    implements _$$UserProfileModelImplCopyWith<$Res> {
  __$$UserProfileModelImplCopyWithImpl(
    _$UserProfileModelImpl _value,
    $Res Function(_$UserProfileModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? bio = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? role = null,
    Object? birthdate = null,
    Object? gender = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserProfileModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
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
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String,
        birthdate:
            null == birthdate
                ? _value.birthdate
                : birthdate // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
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
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileModelImpl implements _UserProfileModel {
  const _$UserProfileModelImpl({
    @JsonKey(name: "userID") required this.userId,
    required this.username,
    this.bio,
    this.displayName,
    this.email,
    this.phoneNumber,
    required this.role,
    required this.birthdate,
    required this.gender,
    @JsonKey(name: 'profilePictureURL') this.profilePictureUrl,
    required this.emailVerified,
    required this.phoneVerified,
    required this.createdAt,
    this.updatedAt,
  });

  factory _$UserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "userID")
  final String userId;
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
  final String role;
  @override
  final String birthdate;
  @override
  final String gender;
  @override
  @JsonKey(name: 'profilePictureURL')
  final String? profilePictureUrl;
  @override
  final bool emailVerified;
  @override
  final bool phoneVerified;
  @override
  final String createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'UserProfileModel(userId: $userId, username: $username, bio: $bio, displayName: $displayName, email: $email, phoneNumber: $phoneNumber, role: $role, birthdate: $birthdate, gender: $gender, profilePictureUrl: $profilePictureUrl, emailVerified: $emailVerified, phoneVerified: $phoneVerified, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
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
    userId,
    username,
    bio,
    displayName,
    email,
    phoneNumber,
    role,
    birthdate,
    gender,
    profilePictureUrl,
    emailVerified,
    phoneVerified,
    createdAt,
    updatedAt,
  );

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      __$$UserProfileModelImplCopyWithImpl<_$UserProfileModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileModelImplToJson(this);
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel({
    @JsonKey(name: "userID") required final String userId,
    required final String username,
    final String? bio,
    final String? displayName,
    final String? email,
    final String? phoneNumber,
    required final String role,
    required final String birthdate,
    required final String gender,
    @JsonKey(name: 'profilePictureURL') final String? profilePictureUrl,
    required final bool emailVerified,
    required final bool phoneVerified,
    required final String createdAt,
    final String? updatedAt,
  }) = _$UserProfileModelImpl;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "userID")
  String get userId;
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
  String get role;
  @override
  String get birthdate;
  @override
  String get gender;
  @override
  @JsonKey(name: 'profilePictureURL')
  String? get profilePictureUrl;
  @override
  bool get emailVerified;
  @override
  bool get phoneVerified;
  @override
  String get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
