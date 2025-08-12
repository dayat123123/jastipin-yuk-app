// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignUpEvent {
  RegisterParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterParam param) register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterParam param)? register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterParam param)? register,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventRegister value) register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventRegister value)? register,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventRegister value)? register,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
    SignUpEvent value,
    $Res Function(SignUpEvent) then,
  ) = _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call({RegisterParam param});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? param = null}) {
    return _then(
      _value.copyWith(
            param:
                null == param
                    ? _value.param
                    : param // ignore: cast_nullable_to_non_nullable
                        as RegisterParam,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignUpEventRegisterImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SignUpEventRegisterImplCopyWith(
    _$SignUpEventRegisterImpl value,
    $Res Function(_$SignUpEventRegisterImpl) then,
  ) = __$$SignUpEventRegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterParam param});
}

/// @nodoc
class __$$SignUpEventRegisterImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventRegisterImpl>
    implements _$$SignUpEventRegisterImplCopyWith<$Res> {
  __$$SignUpEventRegisterImplCopyWithImpl(
    _$SignUpEventRegisterImpl _value,
    $Res Function(_$SignUpEventRegisterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? param = null}) {
    return _then(
      _$SignUpEventRegisterImpl(
        param:
            null == param
                ? _value.param
                : param // ignore: cast_nullable_to_non_nullable
                    as RegisterParam,
      ),
    );
  }
}

/// @nodoc

class _$SignUpEventRegisterImpl implements SignUpEventRegister {
  const _$SignUpEventRegisterImpl({required this.param});

  @override
  final RegisterParam param;

  @override
  String toString() {
    return 'SignUpEvent.register(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventRegisterImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventRegisterImplCopyWith<_$SignUpEventRegisterImpl> get copyWith =>
      __$$SignUpEventRegisterImplCopyWithImpl<_$SignUpEventRegisterImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterParam param) register,
  }) {
    return register(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterParam param)? register,
  }) {
    return register?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterParam param)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEventRegister value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEventRegister value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEventRegister value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class SignUpEventRegister implements SignUpEvent {
  const factory SignUpEventRegister({required final RegisterParam param}) =
      _$SignUpEventRegisterImpl;

  @override
  RegisterParam get param;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpEventRegisterImplCopyWith<_$SignUpEventRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
