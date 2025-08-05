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
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(FirebaseLogin value) firebaseLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(FirebaseLogin value)? firebaseLogin,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(FirebaseLogin value)? firebaseLogin,
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
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
    _$LoginImpl value,
    $Res Function(_$LoginImpl) then,
  ) = __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasicLoginParam param});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
    _$LoginImpl _value,
    $Res Function(_$LoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? param = null}) {
    return _then(
      _$LoginImpl(
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

class _$LoginImpl implements Login {
  const _$LoginImpl({required this.param});

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
            other is _$LoginImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
  }) {
    return login(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
  }) {
    return login?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
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
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(FirebaseLogin value) firebaseLogin,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(FirebaseLogin value)? firebaseLogin,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(FirebaseLogin value)? firebaseLogin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthEvent {
  const factory Login({required final BasicLoginParam param}) = _$LoginImpl;

  BasicLoginParam get param;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
    _$LogoutImpl value,
    $Res Function(_$LogoutImpl) then,
  ) = __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
    _$LogoutImpl _value,
    $Res Function(_$LogoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
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
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(FirebaseLogin value) firebaseLogin,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(FirebaseLogin value)? firebaseLogin,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(FirebaseLogin value)? firebaseLogin,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$FirebaseLoginImplCopyWith<$Res> {
  factory _$$FirebaseLoginImplCopyWith(
    _$FirebaseLoginImpl value,
    $Res Function(_$FirebaseLoginImpl) then,
  ) = __$$FirebaseLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirebaseLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$FirebaseLoginImpl>
    implements _$$FirebaseLoginImplCopyWith<$Res> {
  __$$FirebaseLoginImplCopyWithImpl(
    _$FirebaseLoginImpl _value,
    $Res Function(_$FirebaseLoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FirebaseLoginImpl implements FirebaseLogin {
  const _$FirebaseLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.firebaseLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirebaseLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BasicLoginParam param) login,
    required TResult Function() logout,
    required TResult Function() firebaseLogin,
  }) {
    return firebaseLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BasicLoginParam param)? login,
    TResult? Function()? logout,
    TResult? Function()? firebaseLogin,
  }) {
    return firebaseLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BasicLoginParam param)? login,
    TResult Function()? logout,
    TResult Function()? firebaseLogin,
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
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(FirebaseLogin value) firebaseLogin,
  }) {
    return firebaseLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(FirebaseLogin value)? firebaseLogin,
  }) {
    return firebaseLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(FirebaseLogin value)? firebaseLogin,
    required TResult orElse(),
  }) {
    if (firebaseLogin != null) {
      return firebaseLogin(this);
    }
    return orElse();
  }
}

abstract class FirebaseLogin implements AuthEvent {
  const factory FirebaseLogin() = _$FirebaseLoginImpl;
}
