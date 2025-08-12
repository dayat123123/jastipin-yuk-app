// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmailOtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailOtpStateCopyWith<$Res> {
  factory $EmailOtpStateCopyWith(
    EmailOtpState value,
    $Res Function(EmailOtpState) then,
  ) = _$EmailOtpStateCopyWithImpl<$Res, EmailOtpState>;
}

/// @nodoc
class _$EmailOtpStateCopyWithImpl<$Res, $Val extends EmailOtpState>
    implements $EmailOtpStateCopyWith<$Res> {
  _$EmailOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailOtpStateInitialImplCopyWith<$Res> {
  factory _$$EmailOtpStateInitialImplCopyWith(
    _$EmailOtpStateInitialImpl value,
    $Res Function(_$EmailOtpStateInitialImpl) then,
  ) = __$$EmailOtpStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailOtpStateInitialImplCopyWithImpl<$Res>
    extends _$EmailOtpStateCopyWithImpl<$Res, _$EmailOtpStateInitialImpl>
    implements _$$EmailOtpStateInitialImplCopyWith<$Res> {
  __$$EmailOtpStateInitialImplCopyWithImpl(
    _$EmailOtpStateInitialImpl _value,
    $Res Function(_$EmailOtpStateInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailOtpStateInitialImpl implements EmailOtpStateInitial {
  const _$EmailOtpStateInitialImpl();

  @override
  String toString() {
    return 'EmailOtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateInitial implements EmailOtpState {
  const factory EmailOtpStateInitial() = _$EmailOtpStateInitialImpl;
}

/// @nodoc
abstract class _$$EmailOtpStateLoadingImplCopyWith<$Res> {
  factory _$$EmailOtpStateLoadingImplCopyWith(
    _$EmailOtpStateLoadingImpl value,
    $Res Function(_$EmailOtpStateLoadingImpl) then,
  ) = __$$EmailOtpStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailOtpStateLoadingImplCopyWithImpl<$Res>
    extends _$EmailOtpStateCopyWithImpl<$Res, _$EmailOtpStateLoadingImpl>
    implements _$$EmailOtpStateLoadingImplCopyWith<$Res> {
  __$$EmailOtpStateLoadingImplCopyWithImpl(
    _$EmailOtpStateLoadingImpl _value,
    $Res Function(_$EmailOtpStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailOtpStateLoadingImpl implements EmailOtpStateLoading {
  const _$EmailOtpStateLoadingImpl();

  @override
  String toString() {
    return 'EmailOtpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateLoading implements EmailOtpState {
  const factory EmailOtpStateLoading() = _$EmailOtpStateLoadingImpl;
}

/// @nodoc
abstract class _$$EmailOtpStateSuccessRequestImplCopyWith<$Res> {
  factory _$$EmailOtpStateSuccessRequestImplCopyWith(
    _$EmailOtpStateSuccessRequestImpl value,
    $Res Function(_$EmailOtpStateSuccessRequestImpl) then,
  ) = __$$EmailOtpStateSuccessRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpEmailRequestData data});

  $OtpEmailRequestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EmailOtpStateSuccessRequestImplCopyWithImpl<$Res>
    extends _$EmailOtpStateCopyWithImpl<$Res, _$EmailOtpStateSuccessRequestImpl>
    implements _$$EmailOtpStateSuccessRequestImplCopyWith<$Res> {
  __$$EmailOtpStateSuccessRequestImplCopyWithImpl(
    _$EmailOtpStateSuccessRequestImpl _value,
    $Res Function(_$EmailOtpStateSuccessRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$EmailOtpStateSuccessRequestImpl(
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as OtpEmailRequestData,
      ),
    );
  }

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpEmailRequestDataCopyWith<$Res> get data {
    return $OtpEmailRequestDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$EmailOtpStateSuccessRequestImpl implements EmailOtpStateSuccessRequest {
  const _$EmailOtpStateSuccessRequestImpl({required this.data});

  @override
  final OtpEmailRequestData data;

  @override
  String toString() {
    return 'EmailOtpState.successRequest(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateSuccessRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOtpStateSuccessRequestImplCopyWith<_$EmailOtpStateSuccessRequestImpl>
  get copyWith => __$$EmailOtpStateSuccessRequestImplCopyWithImpl<
    _$EmailOtpStateSuccessRequestImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return successRequest(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return successRequest?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (successRequest != null) {
      return successRequest(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return successRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return successRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (successRequest != null) {
      return successRequest(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateSuccessRequest implements EmailOtpState {
  const factory EmailOtpStateSuccessRequest({
    required final OtpEmailRequestData data,
  }) = _$EmailOtpStateSuccessRequestImpl;

  OtpEmailRequestData get data;

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOtpStateSuccessRequestImplCopyWith<_$EmailOtpStateSuccessRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailOtpStateSuccessValidateImplCopyWith<$Res> {
  factory _$$EmailOtpStateSuccessValidateImplCopyWith(
    _$EmailOtpStateSuccessValidateImpl value,
    $Res Function(_$EmailOtpStateSuccessValidateImpl) then,
  ) = __$$EmailOtpStateSuccessValidateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailOtpStateSuccessValidateImplCopyWithImpl<$Res>
    extends
        _$EmailOtpStateCopyWithImpl<$Res, _$EmailOtpStateSuccessValidateImpl>
    implements _$$EmailOtpStateSuccessValidateImplCopyWith<$Res> {
  __$$EmailOtpStateSuccessValidateImplCopyWithImpl(
    _$EmailOtpStateSuccessValidateImpl _value,
    $Res Function(_$EmailOtpStateSuccessValidateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailOtpStateSuccessValidateImpl
    implements EmailOtpStateSuccessValidate {
  const _$EmailOtpStateSuccessValidateImpl();

  @override
  String toString() {
    return 'EmailOtpState.successValidate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateSuccessValidateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return successValidate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return successValidate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (successValidate != null) {
      return successValidate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return successValidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return successValidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (successValidate != null) {
      return successValidate(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateSuccessValidate implements EmailOtpState {
  const factory EmailOtpStateSuccessValidate() =
      _$EmailOtpStateSuccessValidateImpl;
}

/// @nodoc
abstract class _$$EmailOtpStateSuccessWithGoogleAccountImplCopyWith<$Res> {
  factory _$$EmailOtpStateSuccessWithGoogleAccountImplCopyWith(
    _$EmailOtpStateSuccessWithGoogleAccountImpl value,
    $Res Function(_$EmailOtpStateSuccessWithGoogleAccountImpl) then,
  ) = __$$EmailOtpStateSuccessWithGoogleAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailOtpStateSuccessWithGoogleAccountImplCopyWithImpl<$Res>
    extends
        _$EmailOtpStateCopyWithImpl<
          $Res,
          _$EmailOtpStateSuccessWithGoogleAccountImpl
        >
    implements _$$EmailOtpStateSuccessWithGoogleAccountImplCopyWith<$Res> {
  __$$EmailOtpStateSuccessWithGoogleAccountImplCopyWithImpl(
    _$EmailOtpStateSuccessWithGoogleAccountImpl _value,
    $Res Function(_$EmailOtpStateSuccessWithGoogleAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailOtpStateSuccessWithGoogleAccountImpl
    implements EmailOtpStateSuccessWithGoogleAccount {
  const _$EmailOtpStateSuccessWithGoogleAccountImpl();

  @override
  String toString() {
    return 'EmailOtpState.successValidateWithGoogleAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateSuccessWithGoogleAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return successValidateWithGoogleAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return successValidateWithGoogleAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (successValidateWithGoogleAccount != null) {
      return successValidateWithGoogleAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return successValidateWithGoogleAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return successValidateWithGoogleAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (successValidateWithGoogleAccount != null) {
      return successValidateWithGoogleAccount(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateSuccessWithGoogleAccount implements EmailOtpState {
  const factory EmailOtpStateSuccessWithGoogleAccount() =
      _$EmailOtpStateSuccessWithGoogleAccountImpl;
}

/// @nodoc
abstract class _$$EmailOtpStateFailedRequestImplCopyWith<$Res> {
  factory _$$EmailOtpStateFailedRequestImplCopyWith(
    _$EmailOtpStateFailedRequestImpl value,
    $Res Function(_$EmailOtpStateFailedRequestImpl) then,
  ) = __$$EmailOtpStateFailedRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EmailOtpStateFailedRequestImplCopyWithImpl<$Res>
    extends _$EmailOtpStateCopyWithImpl<$Res, _$EmailOtpStateFailedRequestImpl>
    implements _$$EmailOtpStateFailedRequestImplCopyWith<$Res> {
  __$$EmailOtpStateFailedRequestImplCopyWithImpl(
    _$EmailOtpStateFailedRequestImpl _value,
    $Res Function(_$EmailOtpStateFailedRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EmailOtpStateFailedRequestImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailOtpStateFailedRequestImpl implements EmailOtpStateFailedRequest {
  const _$EmailOtpStateFailedRequestImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EmailOtpState.failedRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateFailedRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOtpStateFailedRequestImplCopyWith<_$EmailOtpStateFailedRequestImpl>
  get copyWith => __$$EmailOtpStateFailedRequestImplCopyWithImpl<
    _$EmailOtpStateFailedRequestImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return failedRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return failedRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (failedRequest != null) {
      return failedRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return failedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return failedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (failedRequest != null) {
      return failedRequest(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateFailedRequest implements EmailOtpState {
  const factory EmailOtpStateFailedRequest({required final String message}) =
      _$EmailOtpStateFailedRequestImpl;

  String get message;

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOtpStateFailedRequestImplCopyWith<_$EmailOtpStateFailedRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailOtpStateFailedValidateImplCopyWith<$Res> {
  factory _$$EmailOtpStateFailedValidateImplCopyWith(
    _$EmailOtpStateFailedValidateImpl value,
    $Res Function(_$EmailOtpStateFailedValidateImpl) then,
  ) = __$$EmailOtpStateFailedValidateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EmailOtpStateFailedValidateImplCopyWithImpl<$Res>
    extends _$EmailOtpStateCopyWithImpl<$Res, _$EmailOtpStateFailedValidateImpl>
    implements _$$EmailOtpStateFailedValidateImplCopyWith<$Res> {
  __$$EmailOtpStateFailedValidateImplCopyWithImpl(
    _$EmailOtpStateFailedValidateImpl _value,
    $Res Function(_$EmailOtpStateFailedValidateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EmailOtpStateFailedValidateImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailOtpStateFailedValidateImpl implements EmailOtpStateFailedValidate {
  const _$EmailOtpStateFailedValidateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EmailOtpState.failedValidate(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateFailedValidateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOtpStateFailedValidateImplCopyWith<_$EmailOtpStateFailedValidateImpl>
  get copyWith => __$$EmailOtpStateFailedValidateImplCopyWithImpl<
    _$EmailOtpStateFailedValidateImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return failedValidate(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return failedValidate?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (failedValidate != null) {
      return failedValidate(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return failedValidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return failedValidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (failedValidate != null) {
      return failedValidate(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateFailedValidate implements EmailOtpState {
  const factory EmailOtpStateFailedValidate({required final String message}) =
      _$EmailOtpStateFailedValidateImpl;

  String get message;

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOtpStateFailedValidateImplCopyWith<_$EmailOtpStateFailedValidateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWith<
  $Res
> {
  factory _$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWith(
    _$EmailOtpStateFailedValidateWithGoogleAccountImpl value,
    $Res Function(_$EmailOtpStateFailedValidateWithGoogleAccountImpl) then,
  ) = __$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWithImpl<$Res>
    extends
        _$EmailOtpStateCopyWithImpl<
          $Res,
          _$EmailOtpStateFailedValidateWithGoogleAccountImpl
        >
    implements
        _$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWith<$Res> {
  __$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWithImpl(
    _$EmailOtpStateFailedValidateWithGoogleAccountImpl _value,
    $Res Function(_$EmailOtpStateFailedValidateWithGoogleAccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$EmailOtpStateFailedValidateWithGoogleAccountImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailOtpStateFailedValidateWithGoogleAccountImpl
    implements EmailOtpStateFailedValidateWithGoogleAccount {
  const _$EmailOtpStateFailedValidateWithGoogleAccountImpl({
    required this.message,
  });

  @override
  final String message;

  @override
  String toString() {
    return 'EmailOtpState.failedValidateWithGoogleAccount(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpStateFailedValidateWithGoogleAccountImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWith<
    _$EmailOtpStateFailedValidateWithGoogleAccountImpl
  >
  get copyWith =>
      __$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWithImpl<
        _$EmailOtpStateFailedValidateWithGoogleAccountImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(OtpEmailRequestData data) successRequest,
    required TResult Function() successValidate,
    required TResult Function() successValidateWithGoogleAccount,
    required TResult Function(String message) failedRequest,
    required TResult Function(String message) failedValidate,
    required TResult Function(String message) failedValidateWithGoogleAccount,
  }) {
    return failedValidateWithGoogleAccount(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OtpEmailRequestData data)? successRequest,
    TResult? Function()? successValidate,
    TResult? Function()? successValidateWithGoogleAccount,
    TResult? Function(String message)? failedRequest,
    TResult? Function(String message)? failedValidate,
    TResult? Function(String message)? failedValidateWithGoogleAccount,
  }) {
    return failedValidateWithGoogleAccount?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OtpEmailRequestData data)? successRequest,
    TResult Function()? successValidate,
    TResult Function()? successValidateWithGoogleAccount,
    TResult Function(String message)? failedRequest,
    TResult Function(String message)? failedValidate,
    TResult Function(String message)? failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (failedValidateWithGoogleAccount != null) {
      return failedValidateWithGoogleAccount(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpStateInitial value) initial,
    required TResult Function(EmailOtpStateLoading value) loading,
    required TResult Function(EmailOtpStateSuccessRequest value) successRequest,
    required TResult Function(EmailOtpStateSuccessValidate value)
    successValidate,
    required TResult Function(EmailOtpStateSuccessWithGoogleAccount value)
    successValidateWithGoogleAccount,
    required TResult Function(EmailOtpStateFailedRequest value) failedRequest,
    required TResult Function(EmailOtpStateFailedValidate value) failedValidate,
    required TResult Function(
      EmailOtpStateFailedValidateWithGoogleAccount value,
    )
    failedValidateWithGoogleAccount,
  }) {
    return failedValidateWithGoogleAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpStateInitial value)? initial,
    TResult? Function(EmailOtpStateLoading value)? loading,
    TResult? Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult? Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult? Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult? Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult? Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult? Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
  }) {
    return failedValidateWithGoogleAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpStateInitial value)? initial,
    TResult Function(EmailOtpStateLoading value)? loading,
    TResult Function(EmailOtpStateSuccessRequest value)? successRequest,
    TResult Function(EmailOtpStateSuccessValidate value)? successValidate,
    TResult Function(EmailOtpStateSuccessWithGoogleAccount value)?
    successValidateWithGoogleAccount,
    TResult Function(EmailOtpStateFailedRequest value)? failedRequest,
    TResult Function(EmailOtpStateFailedValidate value)? failedValidate,
    TResult Function(EmailOtpStateFailedValidateWithGoogleAccount value)?
    failedValidateWithGoogleAccount,
    required TResult orElse(),
  }) {
    if (failedValidateWithGoogleAccount != null) {
      return failedValidateWithGoogleAccount(this);
    }
    return orElse();
  }
}

abstract class EmailOtpStateFailedValidateWithGoogleAccount
    implements EmailOtpState {
  const factory EmailOtpStateFailedValidateWithGoogleAccount({
    required final String message,
  }) = _$EmailOtpStateFailedValidateWithGoogleAccountImpl;

  String get message;

  /// Create a copy of EmailOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOtpStateFailedValidateWithGoogleAccountImplCopyWith<
    _$EmailOtpStateFailedValidateWithGoogleAccountImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
