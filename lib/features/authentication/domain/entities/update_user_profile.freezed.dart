// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateUserProfile _$UpdateUserProfileFromJson(Map<String, dynamic> json) {
  return _UpdateUserProfile.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProfile {
  UserProfile get profile => throw _privateConstructorUsedError;
  UserData get user => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserProfileCopyWith<UpdateUserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileCopyWith<$Res> {
  factory $UpdateUserProfileCopyWith(
    UpdateUserProfile value,
    $Res Function(UpdateUserProfile) then,
  ) = _$UpdateUserProfileCopyWithImpl<$Res, UpdateUserProfile>;
  @useResult
  $Res call({UserProfile profile, UserData user});

  $UserProfileCopyWith<$Res> get profile;
  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UpdateUserProfileCopyWithImpl<$Res, $Val extends UpdateUserProfile>
    implements $UpdateUserProfileCopyWith<$Res> {
  _$UpdateUserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null, Object? user = null}) {
    return _then(
      _value.copyWith(
            profile:
                null == profile
                    ? _value.profile
                    : profile // ignore: cast_nullable_to_non_nullable
                        as UserProfile,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserData,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileImplCopyWith<$Res>
    implements $UpdateUserProfileCopyWith<$Res> {
  factory _$$UpdateUserProfileImplCopyWith(
    _$UpdateUserProfileImpl value,
    $Res Function(_$UpdateUserProfileImpl) then,
  ) = __$$UpdateUserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfile profile, UserData user});

  @override
  $UserProfileCopyWith<$Res> get profile;
  @override
  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateUserProfileImplCopyWithImpl<$Res>
    extends _$UpdateUserProfileCopyWithImpl<$Res, _$UpdateUserProfileImpl>
    implements _$$UpdateUserProfileImplCopyWith<$Res> {
  __$$UpdateUserProfileImplCopyWithImpl(
    _$UpdateUserProfileImpl _value,
    $Res Function(_$UpdateUserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null, Object? user = null}) {
    return _then(
      _$UpdateUserProfileImpl(
        profile:
            null == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                    as UserProfile,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserProfileImpl implements _UpdateUserProfile {
  const _$UpdateUserProfileImpl({required this.profile, required this.user});

  factory _$UpdateUserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserProfileImplFromJson(json);

  @override
  final UserProfile profile;
  @override
  final UserData user;

  @override
  String toString() {
    return 'UpdateUserProfile(profile: $profile, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profile, user);

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileImplCopyWith<_$UpdateUserProfileImpl> get copyWith =>
      __$$UpdateUserProfileImplCopyWithImpl<_$UpdateUserProfileImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserProfileImplToJson(this);
  }
}

abstract class _UpdateUserProfile implements UpdateUserProfile {
  const factory _UpdateUserProfile({
    required final UserProfile profile,
    required final UserData user,
  }) = _$UpdateUserProfileImpl;

  factory _UpdateUserProfile.fromJson(Map<String, dynamic> json) =
      _$UpdateUserProfileImpl.fromJson;

  @override
  UserProfile get profile;
  @override
  UserData get user;

  /// Create a copy of UpdateUserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserProfileImplCopyWith<_$UpdateUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
