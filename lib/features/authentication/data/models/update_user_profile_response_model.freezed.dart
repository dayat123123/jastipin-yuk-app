// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateUserProfileResponseModel _$UpdateUserProfileResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateUserProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProfileResponseModel {
  UserProfileModel get profile => throw _privateConstructorUsedError;
  UserDataModel get user => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserProfileResponseModelCopyWith<UpdateUserProfileResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileResponseModelCopyWith<$Res> {
  factory $UpdateUserProfileResponseModelCopyWith(
    UpdateUserProfileResponseModel value,
    $Res Function(UpdateUserProfileResponseModel) then,
  ) =
      _$UpdateUserProfileResponseModelCopyWithImpl<
        $Res,
        UpdateUserProfileResponseModel
      >;
  @useResult
  $Res call({UserProfileModel profile, UserDataModel user});

  $UserProfileModelCopyWith<$Res> get profile;
  $UserDataModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UpdateUserProfileResponseModelCopyWithImpl<
  $Res,
  $Val extends UpdateUserProfileResponseModel
>
    implements $UpdateUserProfileResponseModelCopyWith<$Res> {
  _$UpdateUserProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserProfileResponseModel
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
                        as UserProfileModel,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserDataModel,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateUserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileModelCopyWith<$Res> get profile {
    return $UserProfileModelCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of UpdateUserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res> get user {
    return $UserDataModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileResponseModelImplCopyWith<$Res>
    implements $UpdateUserProfileResponseModelCopyWith<$Res> {
  factory _$$UpdateUserProfileResponseModelImplCopyWith(
    _$UpdateUserProfileResponseModelImpl value,
    $Res Function(_$UpdateUserProfileResponseModelImpl) then,
  ) = __$$UpdateUserProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileModel profile, UserDataModel user});

  @override
  $UserProfileModelCopyWith<$Res> get profile;
  @override
  $UserDataModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateUserProfileResponseModelImplCopyWithImpl<$Res>
    extends
        _$UpdateUserProfileResponseModelCopyWithImpl<
          $Res,
          _$UpdateUserProfileResponseModelImpl
        >
    implements _$$UpdateUserProfileResponseModelImplCopyWith<$Res> {
  __$$UpdateUserProfileResponseModelImplCopyWithImpl(
    _$UpdateUserProfileResponseModelImpl _value,
    $Res Function(_$UpdateUserProfileResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null, Object? user = null}) {
    return _then(
      _$UpdateUserProfileResponseModelImpl(
        profile:
            null == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                    as UserProfileModel,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserDataModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserProfileResponseModelImpl
    implements _UpdateUserProfileResponseModel {
  const _$UpdateUserProfileResponseModelImpl({
    required this.profile,
    required this.user,
  });

  factory _$UpdateUserProfileResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UpdateUserProfileResponseModelImplFromJson(json);

  @override
  final UserProfileModel profile;
  @override
  final UserDataModel user;

  @override
  String toString() {
    return 'UpdateUserProfileResponseModel(profile: $profile, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileResponseModelImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profile, user);

  /// Create a copy of UpdateUserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileResponseModelImplCopyWith<
    _$UpdateUserProfileResponseModelImpl
  >
  get copyWith => __$$UpdateUserProfileResponseModelImplCopyWithImpl<
    _$UpdateUserProfileResponseModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserProfileResponseModelImplToJson(this);
  }
}

abstract class _UpdateUserProfileResponseModel
    implements UpdateUserProfileResponseModel {
  const factory _UpdateUserProfileResponseModel({
    required final UserProfileModel profile,
    required final UserDataModel user,
  }) = _$UpdateUserProfileResponseModelImpl;

  factory _UpdateUserProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserProfileResponseModelImpl.fromJson;

  @override
  UserProfileModel get profile;
  @override
  UserDataModel get user;

  /// Create a copy of UpdateUserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserProfileResponseModelImplCopyWith<
    _$UpdateUserProfileResponseModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
