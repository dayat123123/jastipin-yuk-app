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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventLocalLogin value) localLogin,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventFirebaseLogin value) firebaseLogin,
    required TResult Function(AuthEventUpdateUserState value) updateUserState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventLocalLogin value)? localLogin,
    TResult? Function(AuthEventLogout value)? logout,
    TResult? Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult? Function(AuthEventUpdateUserState value)? updateUserState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventLocalLogin value)? localLogin,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult Function(AuthEventUpdateUserState value)? updateUserState,
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
abstract class _$$AuthEventLoginImplCopyWith<$Res> {
  factory _$$AuthEventLoginImplCopyWith(
    _$AuthEventLoginImpl value,
    $Res Function(_$AuthEventLoginImpl) then,
  ) = __$$AuthEventLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasicLoginParam param});
}

/// @nodoc
class __$$AuthEventLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLoginImpl>
    implements _$$AuthEventLoginImplCopyWith<$Res> {
  __$$AuthEventLoginImplCopyWithImpl(
    _$AuthEventLoginImpl _value,
    $Res Function(_$AuthEventLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? param = null}) {
    return _then(
      _$AuthEventLoginImpl(
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

class _$AuthEventLoginImpl implements AuthEventLogin {
  const _$AuthEventLoginImpl({required this.param});

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
            other is _$AuthEventLoginImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventLoginImplCopyWith<_$AuthEventLoginImpl> get copyWith =>
      __$$AuthEventLoginImplCopyWithImpl<_$AuthEventLoginImpl>(
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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventLocalLogin value) localLogin,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventFirebaseLogin value) firebaseLogin,
    required TResult Function(AuthEventUpdateUserState value) updateUserState,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventLocalLogin value)? localLogin,
    TResult? Function(AuthEventLogout value)? logout,
    TResult? Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult? Function(AuthEventUpdateUserState value)? updateUserState,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventLocalLogin value)? localLogin,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult Function(AuthEventUpdateUserState value)? updateUserState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogin implements AuthEvent {
  const factory AuthEventLogin({required final BasicLoginParam param}) =
      _$AuthEventLoginImpl;

  BasicLoginParam get param;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventLoginImplCopyWith<_$AuthEventLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventLocalLoginImplCopyWith<$Res> {
  factory _$$AuthEventLocalLoginImplCopyWith(
    _$AuthEventLocalLoginImpl value,
    $Res Function(_$AuthEventLocalLoginImpl) then,
  ) = __$$AuthEventLocalLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLocalLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLocalLoginImpl>
    implements _$$AuthEventLocalLoginImplCopyWith<$Res> {
  __$$AuthEventLocalLoginImplCopyWithImpl(
    _$AuthEventLocalLoginImpl _value,
    $Res Function(_$AuthEventLocalLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventLocalLoginImpl implements AuthEventLocalLogin {
  const _$AuthEventLocalLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.localLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventLocalLoginImpl);
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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventLocalLogin value) localLogin,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventFirebaseLogin value) firebaseLogin,
    required TResult Function(AuthEventUpdateUserState value) updateUserState,
  }) {
    return localLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventLocalLogin value)? localLogin,
    TResult? Function(AuthEventLogout value)? logout,
    TResult? Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult? Function(AuthEventUpdateUserState value)? updateUserState,
  }) {
    return localLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventLocalLogin value)? localLogin,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult Function(AuthEventUpdateUserState value)? updateUserState,
    required TResult orElse(),
  }) {
    if (localLogin != null) {
      return localLogin(this);
    }
    return orElse();
  }
}

abstract class AuthEventLocalLogin implements AuthEvent {
  const factory AuthEventLocalLogin() = _$AuthEventLocalLoginImpl;
}

/// @nodoc
abstract class _$$AuthEventLogoutImplCopyWith<$Res> {
  factory _$$AuthEventLogoutImplCopyWith(
    _$AuthEventLogoutImpl value,
    $Res Function(_$AuthEventLogoutImpl) then,
  ) = __$$AuthEventLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventLogoutImpl>
    implements _$$AuthEventLogoutImplCopyWith<$Res> {
  __$$AuthEventLogoutImplCopyWithImpl(
    _$AuthEventLogoutImpl _value,
    $Res Function(_$AuthEventLogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventLogoutImpl implements AuthEventLogout {
  const _$AuthEventLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventLogoutImpl);
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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventLocalLogin value) localLogin,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventFirebaseLogin value) firebaseLogin,
    required TResult Function(AuthEventUpdateUserState value) updateUserState,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventLocalLogin value)? localLogin,
    TResult? Function(AuthEventLogout value)? logout,
    TResult? Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult? Function(AuthEventUpdateUserState value)? updateUserState,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventLocalLogin value)? localLogin,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult Function(AuthEventUpdateUserState value)? updateUserState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogout implements AuthEvent {
  const factory AuthEventLogout() = _$AuthEventLogoutImpl;
}

/// @nodoc
abstract class _$$AuthEventFirebaseLoginImplCopyWith<$Res> {
  factory _$$AuthEventFirebaseLoginImplCopyWith(
    _$AuthEventFirebaseLoginImpl value,
    $Res Function(_$AuthEventFirebaseLoginImpl) then,
  ) = __$$AuthEventFirebaseLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventFirebaseLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventFirebaseLoginImpl>
    implements _$$AuthEventFirebaseLoginImplCopyWith<$Res> {
  __$$AuthEventFirebaseLoginImplCopyWithImpl(
    _$AuthEventFirebaseLoginImpl _value,
    $Res Function(_$AuthEventFirebaseLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthEventFirebaseLoginImpl implements AuthEventFirebaseLogin {
  const _$AuthEventFirebaseLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.firebaseLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventFirebaseLoginImpl);
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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventLocalLogin value) localLogin,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventFirebaseLogin value) firebaseLogin,
    required TResult Function(AuthEventUpdateUserState value) updateUserState,
  }) {
    return firebaseLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventLocalLogin value)? localLogin,
    TResult? Function(AuthEventLogout value)? logout,
    TResult? Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult? Function(AuthEventUpdateUserState value)? updateUserState,
  }) {
    return firebaseLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventLocalLogin value)? localLogin,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult Function(AuthEventUpdateUserState value)? updateUserState,
    required TResult orElse(),
  }) {
    if (firebaseLogin != null) {
      return firebaseLogin(this);
    }
    return orElse();
  }
}

abstract class AuthEventFirebaseLogin implements AuthEvent {
  const factory AuthEventFirebaseLogin() = _$AuthEventFirebaseLoginImpl;
}

/// @nodoc
abstract class _$$AuthEventUpdateUserStateImplCopyWith<$Res> {
  factory _$$AuthEventUpdateUserStateImplCopyWith(
    _$AuthEventUpdateUserStateImpl value,
    $Res Function(_$AuthEventUpdateUserStateImpl) then,
  ) = __$$AuthEventUpdateUserStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthEventUpdateUserStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventUpdateUserStateImpl>
    implements _$$AuthEventUpdateUserStateImplCopyWith<$Res> {
  __$$AuthEventUpdateUserStateImplCopyWithImpl(
    _$AuthEventUpdateUserStateImpl _value,
    $Res Function(_$AuthEventUpdateUserStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$AuthEventUpdateUserStateImpl(
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

class _$AuthEventUpdateUserStateImpl implements AuthEventUpdateUserState {
  const _$AuthEventUpdateUserStateImpl({required this.data});

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
            other is _$AuthEventUpdateUserStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventUpdateUserStateImplCopyWith<_$AuthEventUpdateUserStateImpl>
  get copyWith => __$$AuthEventUpdateUserStateImplCopyWithImpl<
    _$AuthEventUpdateUserStateImpl
  >(this, _$identity);

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
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventLocalLogin value) localLogin,
    required TResult Function(AuthEventLogout value) logout,
    required TResult Function(AuthEventFirebaseLogin value) firebaseLogin,
    required TResult Function(AuthEventUpdateUserState value) updateUserState,
  }) {
    return updateUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventLogin value)? login,
    TResult? Function(AuthEventLocalLogin value)? localLogin,
    TResult? Function(AuthEventLogout value)? logout,
    TResult? Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult? Function(AuthEventUpdateUserState value)? updateUserState,
  }) {
    return updateUserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventLocalLogin value)? localLogin,
    TResult Function(AuthEventLogout value)? logout,
    TResult Function(AuthEventFirebaseLogin value)? firebaseLogin,
    TResult Function(AuthEventUpdateUserState value)? updateUserState,
    required TResult orElse(),
  }) {
    if (updateUserState != null) {
      return updateUserState(this);
    }
    return orElse();
  }
}

abstract class AuthEventUpdateUserState implements AuthEvent {
  const factory AuthEventUpdateUserState({required final UserData data}) =
      _$AuthEventUpdateUserStateImpl;

  UserData get data;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEventUpdateUserStateImplCopyWith<_$AuthEventUpdateUserStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
