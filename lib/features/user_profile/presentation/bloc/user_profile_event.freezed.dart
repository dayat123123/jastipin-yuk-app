// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadUserProfile,
    required TResult Function(UpdateUserProfileParam param) updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? loadUserProfile,
    TResult? Function(UpdateUserProfileParam param)? updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadUserProfile,
    TResult Function(UpdateUserProfileParam param)? updateUserProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileEventLoadUserProfile value)
    loadUserProfile,
    required TResult Function(UserProfileEventUpdateUserProfile value)
    updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProfileEventLoadUserProfile value)? loadUserProfile,
    TResult? Function(UserProfileEventUpdateUserProfile value)?
    updateUserProfile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileEventLoadUserProfile value)? loadUserProfile,
    TResult Function(UserProfileEventUpdateUserProfile value)?
    updateUserProfile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
    UserProfileEvent value,
    $Res Function(UserProfileEvent) then,
  ) = _$UserProfileEventCopyWithImpl<$Res, UserProfileEvent>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res, $Val extends UserProfileEvent>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserProfileEventLoadUserProfileImplCopyWith<$Res> {
  factory _$$UserProfileEventLoadUserProfileImplCopyWith(
    _$UserProfileEventLoadUserProfileImpl value,
    $Res Function(_$UserProfileEventLoadUserProfileImpl) then,
  ) = __$$UserProfileEventLoadUserProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRefresh});
}

/// @nodoc
class __$$UserProfileEventLoadUserProfileImplCopyWithImpl<$Res>
    extends
        _$UserProfileEventCopyWithImpl<
          $Res,
          _$UserProfileEventLoadUserProfileImpl
        >
    implements _$$UserProfileEventLoadUserProfileImplCopyWith<$Res> {
  __$$UserProfileEventLoadUserProfileImplCopyWithImpl(
    _$UserProfileEventLoadUserProfileImpl _value,
    $Res Function(_$UserProfileEventLoadUserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isRefresh = null}) {
    return _then(
      _$UserProfileEventLoadUserProfileImpl(
        isRefresh:
            null == isRefresh
                ? _value.isRefresh
                : isRefresh // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$UserProfileEventLoadUserProfileImpl
    implements UserProfileEventLoadUserProfile {
  const _$UserProfileEventLoadUserProfileImpl({this.isRefresh = false});

  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'UserProfileEvent.loadUserProfile(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileEventLoadUserProfileImpl &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRefresh);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileEventLoadUserProfileImplCopyWith<
    _$UserProfileEventLoadUserProfileImpl
  >
  get copyWith => __$$UserProfileEventLoadUserProfileImplCopyWithImpl<
    _$UserProfileEventLoadUserProfileImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadUserProfile,
    required TResult Function(UpdateUserProfileParam param) updateUserProfile,
  }) {
    return loadUserProfile(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? loadUserProfile,
    TResult? Function(UpdateUserProfileParam param)? updateUserProfile,
  }) {
    return loadUserProfile?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadUserProfile,
    TResult Function(UpdateUserProfileParam param)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (loadUserProfile != null) {
      return loadUserProfile(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileEventLoadUserProfile value)
    loadUserProfile,
    required TResult Function(UserProfileEventUpdateUserProfile value)
    updateUserProfile,
  }) {
    return loadUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProfileEventLoadUserProfile value)? loadUserProfile,
    TResult? Function(UserProfileEventUpdateUserProfile value)?
    updateUserProfile,
  }) {
    return loadUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileEventLoadUserProfile value)? loadUserProfile,
    TResult Function(UserProfileEventUpdateUserProfile value)?
    updateUserProfile,
    required TResult orElse(),
  }) {
    if (loadUserProfile != null) {
      return loadUserProfile(this);
    }
    return orElse();
  }
}

abstract class UserProfileEventLoadUserProfile implements UserProfileEvent {
  const factory UserProfileEventLoadUserProfile({final bool isRefresh}) =
      _$UserProfileEventLoadUserProfileImpl;

  bool get isRefresh;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileEventLoadUserProfileImplCopyWith<
    _$UserProfileEventLoadUserProfileImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProfileEventUpdateUserProfileImplCopyWith<$Res> {
  factory _$$UserProfileEventUpdateUserProfileImplCopyWith(
    _$UserProfileEventUpdateUserProfileImpl value,
    $Res Function(_$UserProfileEventUpdateUserProfileImpl) then,
  ) = __$$UserProfileEventUpdateUserProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUserProfileParam param});
}

/// @nodoc
class __$$UserProfileEventUpdateUserProfileImplCopyWithImpl<$Res>
    extends
        _$UserProfileEventCopyWithImpl<
          $Res,
          _$UserProfileEventUpdateUserProfileImpl
        >
    implements _$$UserProfileEventUpdateUserProfileImplCopyWith<$Res> {
  __$$UserProfileEventUpdateUserProfileImplCopyWithImpl(
    _$UserProfileEventUpdateUserProfileImpl _value,
    $Res Function(_$UserProfileEventUpdateUserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? param = null}) {
    return _then(
      _$UserProfileEventUpdateUserProfileImpl(
        param:
            null == param
                ? _value.param
                : param // ignore: cast_nullable_to_non_nullable
                    as UpdateUserProfileParam,
      ),
    );
  }
}

/// @nodoc

class _$UserProfileEventUpdateUserProfileImpl
    implements UserProfileEventUpdateUserProfile {
  const _$UserProfileEventUpdateUserProfileImpl({required this.param});

  @override
  final UpdateUserProfileParam param;

  @override
  String toString() {
    return 'UserProfileEvent.updateUserProfile(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileEventUpdateUserProfileImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileEventUpdateUserProfileImplCopyWith<
    _$UserProfileEventUpdateUserProfileImpl
  >
  get copyWith => __$$UserProfileEventUpdateUserProfileImplCopyWithImpl<
    _$UserProfileEventUpdateUserProfileImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isRefresh) loadUserProfile,
    required TResult Function(UpdateUserProfileParam param) updateUserProfile,
  }) {
    return updateUserProfile(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isRefresh)? loadUserProfile,
    TResult? Function(UpdateUserProfileParam param)? updateUserProfile,
  }) {
    return updateUserProfile?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isRefresh)? loadUserProfile,
    TResult Function(UpdateUserProfileParam param)? updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfileEventLoadUserProfile value)
    loadUserProfile,
    required TResult Function(UserProfileEventUpdateUserProfile value)
    updateUserProfile,
  }) {
    return updateUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserProfileEventLoadUserProfile value)? loadUserProfile,
    TResult? Function(UserProfileEventUpdateUserProfile value)?
    updateUserProfile,
  }) {
    return updateUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfileEventLoadUserProfile value)? loadUserProfile,
    TResult Function(UserProfileEventUpdateUserProfile value)?
    updateUserProfile,
    required TResult orElse(),
  }) {
    if (updateUserProfile != null) {
      return updateUserProfile(this);
    }
    return orElse();
  }
}

abstract class UserProfileEventUpdateUserProfile implements UserProfileEvent {
  const factory UserProfileEventUpdateUserProfile({
    required final UpdateUserProfileParam param,
  }) = _$UserProfileEventUpdateUserProfileImpl;

  UpdateUserProfileParam get param;

  /// Create a copy of UserProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileEventUpdateUserProfileImplCopyWith<
    _$UserProfileEventUpdateUserProfileImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
