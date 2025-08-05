// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) {
  return _UserDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserDataModel {
  @JsonKey(name: "userID")
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePictureURL')
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool get phoneVerified => throw _privateConstructorUsedError;

  /// Serializes this UserDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataModelCopyWith<UserDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataModelCopyWith<$Res> {
  factory $UserDataModelCopyWith(
    UserDataModel value,
    $Res Function(UserDataModel) then,
  ) = _$UserDataModelCopyWithImpl<$Res, UserDataModel>;
  @useResult
  $Res call({
    @JsonKey(name: "userID") String userId,
    String username,
    String? email,
    String? phoneNumber,
    String role,
    String birthdate,
    String gender,
    @JsonKey(name: 'profilePictureURL') String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
  });
}

/// @nodoc
class _$UserDataModelCopyWithImpl<$Res, $Val extends UserDataModel>
    implements $UserDataModelCopyWith<$Res> {
  _$UserDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? role = null,
    Object? birthdate = null,
    Object? gender = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserDataModelImplCopyWith<$Res>
    implements $UserDataModelCopyWith<$Res> {
  factory _$$UserDataModelImplCopyWith(
    _$UserDataModelImpl value,
    $Res Function(_$UserDataModelImpl) then,
  ) = __$$UserDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "userID") String userId,
    String username,
    String? email,
    String? phoneNumber,
    String role,
    String birthdate,
    String gender,
    @JsonKey(name: 'profilePictureURL') String? profilePictureUrl,
    bool emailVerified,
    bool phoneVerified,
  });
}

/// @nodoc
class __$$UserDataModelImplCopyWithImpl<$Res>
    extends _$UserDataModelCopyWithImpl<$Res, _$UserDataModelImpl>
    implements _$$UserDataModelImplCopyWith<$Res> {
  __$$UserDataModelImplCopyWithImpl(
    _$UserDataModelImpl _value,
    $Res Function(_$UserDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? role = null,
    Object? birthdate = null,
    Object? gender = null,
    Object? profilePictureUrl = freezed,
    Object? emailVerified = null,
    Object? phoneVerified = null,
  }) {
    return _then(
      _$UserDataModelImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataModelImpl implements _UserDataModel {
  const _$UserDataModelImpl({
    @JsonKey(name: "userID") required this.userId,
    required this.username,
    this.email,
    this.phoneNumber,
    required this.role,
    required this.birthdate,
    required this.gender,
    @JsonKey(name: 'profilePictureURL') this.profilePictureUrl,
    required this.emailVerified,
    required this.phoneVerified,
  });

  factory _$UserDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataModelImplFromJson(json);

  @override
  @JsonKey(name: "userID")
  final String userId;
  @override
  final String username;
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
  String toString() {
    return 'UserDataModel(userId: $userId, username: $username, email: $email, phoneNumber: $phoneNumber, role: $role, birthdate: $birthdate, gender: $gender, profilePictureUrl: $profilePictureUrl, emailVerified: $emailVerified, phoneVerified: $phoneVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
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
                other.phoneVerified == phoneVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    username,
    email,
    phoneNumber,
    role,
    birthdate,
    gender,
    profilePictureUrl,
    emailVerified,
    phoneVerified,
  );

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      __$$UserDataModelImplCopyWithImpl<_$UserDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataModelImplToJson(this);
  }
}

abstract class _UserDataModel implements UserDataModel {
  const factory _UserDataModel({
    @JsonKey(name: "userID") required final String userId,
    required final String username,
    final String? email,
    final String? phoneNumber,
    required final String role,
    required final String birthdate,
    required final String gender,
    @JsonKey(name: 'profilePictureURL') final String? profilePictureUrl,
    required final bool emailVerified,
    required final bool phoneVerified,
  }) = _$UserDataModelImpl;

  factory _UserDataModel.fromJson(Map<String, dynamic> json) =
      _$UserDataModelImpl.fromJson;

  @override
  @JsonKey(name: "userID")
  String get userId;
  @override
  String get username;
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

  /// Create a copy of UserDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataModelImplCopyWith<_$UserDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
