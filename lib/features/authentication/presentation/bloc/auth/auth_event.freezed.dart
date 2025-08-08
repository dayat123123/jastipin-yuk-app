// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() localLogin,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
    required TResult Function(UserData data) updateUserState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? localLogin,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
    TResult? Function(UserData data)? updateUserState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? localLogin,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    TResult Function(UserData data)? updateUserState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LocalLoginEvent value) localLogin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(FirebaseLoginEvent value) firebaseLogin,
    required TResult Function(UpdateUserStateEvent value) updateUserState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(LocalLoginEvent value)? localLogin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult? Function(UpdateUserStateEvent value)? updateUserState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LocalLoginEvent value)? localLogin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult Function(UpdateUserStateEvent value)? updateUserState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
    _$LoginEventImpl value,
    $Res Function(_$LoginEventImpl) then,
  ) = __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasicLoginParam param});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
    _$LoginEventImpl _value,
    $Res Function(_$LoginEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? param = null}) {
    return _then(
      _$LoginEventImpl(
        param:
            null == param
                ? _value.param
                : param // ignore: cast_nullable_to_non_nullable
                    as BasicLoginParam,
      ),
    );
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.param});

  @override
  final BasicLoginParam param;

  @override
  String toString() {
    return 'AuthEvent.login(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() localLogin,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
    required TResult Function(UserData data) updateUserState,
  }) {
    return login(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? localLogin,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
    TResult? Function(UserData data)? updateUserState,
  }) {
    return login?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? localLogin,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    TResult Function(UserData data)? updateUserState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LocalLoginEvent value) localLogin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(FirebaseLoginEvent value) firebaseLogin,
    required TResult Function(UpdateUserStateEvent value) updateUserState,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(LocalLoginEvent value)? localLogin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult? Function(UpdateUserStateEvent value)? updateUserState,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LocalLoginEvent value)? localLogin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult Function(UpdateUserStateEvent value)? updateUserState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent({required final BasicLoginParam param}) =
      _$LoginEventImpl;

  BasicLoginParam get param;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalLoginEventImplCopyWith<$Res> {
  factory _$$LocalLoginEventImplCopyWith(
    _$LocalLoginEventImpl value,
    $Res Function(_$LocalLoginEventImpl) then,
  ) = __$$LocalLoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalLoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LocalLoginEventImpl>
    implements _$$LocalLoginEventImplCopyWith<$Res> {
  __$$LocalLoginEventImplCopyWithImpl(
    _$LocalLoginEventImpl _value,
    $Res Function(_$LocalLoginEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocalLoginEventImpl implements LocalLoginEvent {
  const _$LocalLoginEventImpl();

  @override
  String toString() {
    return 'AuthEvent.localLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocalLoginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() localLogin,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
    required TResult Function(UserData data) updateUserState,
  }) {
    return localLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? localLogin,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
    TResult? Function(UserData data)? updateUserState,
  }) {
    return localLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? localLogin,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    TResult Function(UserData data)? updateUserState,
    required TResult orElse(),
  }) {
    if (localLogin != null) {
      return localLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LocalLoginEvent value) localLogin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(FirebaseLoginEvent value) firebaseLogin,
    required TResult Function(UpdateUserStateEvent value) updateUserState,
  }) {
    return localLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(LocalLoginEvent value)? localLogin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult? Function(UpdateUserStateEvent value)? updateUserState,
  }) {
    return localLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LocalLoginEvent value)? localLogin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult Function(UpdateUserStateEvent value)? updateUserState,
    required TResult orElse(),
  }) {
    if (localLogin != null) {
      return localLogin(this);
    }
    return orElse();
  }
}

abstract class LocalLoginEvent implements AuthEvent {
  const factory LocalLoginEvent() = _$LocalLoginEventImpl;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
    _$LogoutEventImpl value,
    $Res Function(_$LogoutEventImpl) then,
  ) = __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
    _$LogoutEventImpl _value,
    $Res Function(_$LogoutEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() localLogin,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
    required TResult Function(UserData data) updateUserState,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? localLogin,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
    TResult? Function(UserData data)? updateUserState,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? localLogin,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    TResult Function(UserData data)? updateUserState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LocalLoginEvent value) localLogin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(FirebaseLoginEvent value) firebaseLogin,
    required TResult Function(UpdateUserStateEvent value) updateUserState,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(LocalLoginEvent value)? localLogin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult? Function(UpdateUserStateEvent value)? updateUserState,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LocalLoginEvent value)? localLogin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult Function(UpdateUserStateEvent value)? updateUserState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
abstract class _$$FirebaseLoginEventImplCopyWith<$Res> {
  factory _$$FirebaseLoginEventImplCopyWith(
    _$FirebaseLoginEventImpl value,
    $Res Function(_$FirebaseLoginEventImpl) then,
  ) = __$$FirebaseLoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseLoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$FirebaseLoginEventImpl>
    implements _$$FirebaseLoginEventImplCopyWith<$Res> {
  __$$FirebaseLoginEventImplCopyWithImpl(
    _$FirebaseLoginEventImpl _value,
    $Res Function(_$FirebaseLoginEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseLoginEventImpl implements FirebaseLoginEvent {
  const _$FirebaseLoginEventImpl();

  @override
  String toString() {
    return 'AuthEvent.firebaseLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirebaseLoginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() localLogin,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
    required TResult Function(UserData data) updateUserState,
  }) {
    return firebaseLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? localLogin,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
    TResult? Function(UserData data)? updateUserState,
  }) {
    return firebaseLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? localLogin,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    TResult Function(UserData data)? updateUserState,
    required TResult orElse(),
  }) {
    if (firebaseLogin != null) {
      return firebaseLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LocalLoginEvent value) localLogin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(FirebaseLoginEvent value) firebaseLogin,
    required TResult Function(UpdateUserStateEvent value) updateUserState,
  }) {
    return firebaseLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(LocalLoginEvent value)? localLogin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult? Function(UpdateUserStateEvent value)? updateUserState,
  }) {
    return firebaseLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LocalLoginEvent value)? localLogin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult Function(UpdateUserStateEvent value)? updateUserState,
    required TResult orElse(),
  }) {
    if (firebaseLogin != null) {
      return firebaseLogin(this);
    }
    return orElse();
  }
}

abstract class FirebaseLoginEvent implements AuthEvent {
  const factory FirebaseLoginEvent() = _$FirebaseLoginEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserStateEventImplCopyWith<$Res> {
  factory _$$UpdateUserStateEventImplCopyWith(
    _$UpdateUserStateEventImpl value,
    $Res Function(_$UpdateUserStateEventImpl) then,
  ) = __$$UpdateUserStateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpdateUserStateEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserStateEventImpl>
    implements _$$UpdateUserStateEventImplCopyWith<$Res> {
  __$$UpdateUserStateEventImplCopyWithImpl(
    _$UpdateUserStateEventImpl _value,
    $Res Function(_$UpdateUserStateEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$UpdateUserStateEventImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as UserData,
      ),
    );
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UpdateUserStateEventImpl implements UpdateUserStateEvent {
  const _$UpdateUserStateEventImpl({required this.data});

  @override
  final UserData data;

  @override
  String toString() {
    return 'AuthEvent.updateUserState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStateEventImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserStateEventImplCopyWith<_$UpdateUserStateEventImpl>
  get copyWith =>
      __$$UpdateUserStateEventImplCopyWithImpl<_$UpdateUserStateEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() localLogin,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
    required TResult Function(UserData data) updateUserState,
  }) {
    return updateUserState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? localLogin,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
    TResult? Function(UserData data)? updateUserState,
  }) {
    return updateUserState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? localLogin,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    TResult Function(UserData data)? updateUserState,
    required TResult orElse(),
  }) {
    if (updateUserState != null) {
      return updateUserState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LocalLoginEvent value) localLogin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(FirebaseLoginEvent value) firebaseLogin,
    required TResult Function(UpdateUserStateEvent value) updateUserState,
  }) {
    return updateUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(LocalLoginEvent value)? localLogin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult? Function(UpdateUserStateEvent value)? updateUserState,
  }) {
    return updateUserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LocalLoginEvent value)? localLogin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(FirebaseLoginEvent value)? firebaseLogin,
    TResult Function(UpdateUserStateEvent value)? updateUserState,
    required TResult orElse(),
  }) {
    if (updateUserState != null) {
      return updateUserState(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStateEvent implements AuthEvent {
  const factory UpdateUserStateEvent({required final UserData data}) =
      _$UpdateUserStateEventImpl;

  UserData get data;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserStateEventImplCopyWith<_$UpdateUserStateEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
