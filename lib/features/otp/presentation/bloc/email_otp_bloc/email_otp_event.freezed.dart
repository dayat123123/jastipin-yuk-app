// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmailOtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestOTP,
    required TResult Function() validateWithGoogle,
    required TResult Function(String email, String otpCode) validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestOTP,
    TResult? Function()? validateWithGoogle,
    TResult? Function(String email, String otpCode)? validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestOTP,
    TResult Function()? validateWithGoogle,
    TResult Function(String email, String otpCode)? validateOTP,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpEventRequestOTP value) requestOTP,
    required TResult Function(EmailOtpEventValidateWithGoogle value)
    validateWithGoogle,
    required TResult Function(EmailOtpEventValidateOTP value) validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult? Function(EmailOtpEventValidateWithGoogle value)?
    validateWithGoogle,
    TResult? Function(EmailOtpEventValidateOTP value)? validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult Function(EmailOtpEventValidateWithGoogle value)? validateWithGoogle,
    TResult Function(EmailOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailOtpEventCopyWith<$Res> {
  factory $EmailOtpEventCopyWith(
    EmailOtpEvent value,
    $Res Function(EmailOtpEvent) then,
  ) = _$EmailOtpEventCopyWithImpl<$Res, EmailOtpEvent>;
}

/// @nodoc
class _$EmailOtpEventCopyWithImpl<$Res, $Val extends EmailOtpEvent>
    implements $EmailOtpEventCopyWith<$Res> {
  _$EmailOtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailOtpEventRequestOTPImplCopyWith<$Res> {
  factory _$$EmailOtpEventRequestOTPImplCopyWith(
    _$EmailOtpEventRequestOTPImpl value,
    $Res Function(_$EmailOtpEventRequestOTPImpl) then,
  ) = __$$EmailOtpEventRequestOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailOtpEventRequestOTPImplCopyWithImpl<$Res>
    extends _$EmailOtpEventCopyWithImpl<$Res, _$EmailOtpEventRequestOTPImpl>
    implements _$$EmailOtpEventRequestOTPImplCopyWith<$Res> {
  __$$EmailOtpEventRequestOTPImplCopyWithImpl(
    _$EmailOtpEventRequestOTPImpl _value,
    $Res Function(_$EmailOtpEventRequestOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$EmailOtpEventRequestOTPImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailOtpEventRequestOTPImpl implements EmailOtpEventRequestOTP {
  const _$EmailOtpEventRequestOTPImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'EmailOtpEvent.requestOTP(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpEventRequestOTPImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOtpEventRequestOTPImplCopyWith<_$EmailOtpEventRequestOTPImpl>
  get copyWith => __$$EmailOtpEventRequestOTPImplCopyWithImpl<
    _$EmailOtpEventRequestOTPImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestOTP,
    required TResult Function() validateWithGoogle,
    required TResult Function(String email, String otpCode) validateOTP,
  }) {
    return requestOTP(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestOTP,
    TResult? Function()? validateWithGoogle,
    TResult? Function(String email, String otpCode)? validateOTP,
  }) {
    return requestOTP?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestOTP,
    TResult Function()? validateWithGoogle,
    TResult Function(String email, String otpCode)? validateOTP,
    required TResult orElse(),
  }) {
    if (requestOTP != null) {
      return requestOTP(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpEventRequestOTP value) requestOTP,
    required TResult Function(EmailOtpEventValidateWithGoogle value)
    validateWithGoogle,
    required TResult Function(EmailOtpEventValidateOTP value) validateOTP,
  }) {
    return requestOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult? Function(EmailOtpEventValidateWithGoogle value)?
    validateWithGoogle,
    TResult? Function(EmailOtpEventValidateOTP value)? validateOTP,
  }) {
    return requestOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult Function(EmailOtpEventValidateWithGoogle value)? validateWithGoogle,
    TResult Function(EmailOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) {
    if (requestOTP != null) {
      return requestOTP(this);
    }
    return orElse();
  }
}

abstract class EmailOtpEventRequestOTP implements EmailOtpEvent {
  const factory EmailOtpEventRequestOTP({required final String email}) =
      _$EmailOtpEventRequestOTPImpl;

  String get email;

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOtpEventRequestOTPImplCopyWith<_$EmailOtpEventRequestOTPImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailOtpEventValidateWithGoogleImplCopyWith<$Res> {
  factory _$$EmailOtpEventValidateWithGoogleImplCopyWith(
    _$EmailOtpEventValidateWithGoogleImpl value,
    $Res Function(_$EmailOtpEventValidateWithGoogleImpl) then,
  ) = __$$EmailOtpEventValidateWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailOtpEventValidateWithGoogleImplCopyWithImpl<$Res>
    extends
        _$EmailOtpEventCopyWithImpl<$Res, _$EmailOtpEventValidateWithGoogleImpl>
    implements _$$EmailOtpEventValidateWithGoogleImplCopyWith<$Res> {
  __$$EmailOtpEventValidateWithGoogleImplCopyWithImpl(
    _$EmailOtpEventValidateWithGoogleImpl _value,
    $Res Function(_$EmailOtpEventValidateWithGoogleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailOtpEventValidateWithGoogleImpl
    implements EmailOtpEventValidateWithGoogle {
  const _$EmailOtpEventValidateWithGoogleImpl();

  @override
  String toString() {
    return 'EmailOtpEvent.validateWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpEventValidateWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestOTP,
    required TResult Function() validateWithGoogle,
    required TResult Function(String email, String otpCode) validateOTP,
  }) {
    return validateWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestOTP,
    TResult? Function()? validateWithGoogle,
    TResult? Function(String email, String otpCode)? validateOTP,
  }) {
    return validateWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestOTP,
    TResult Function()? validateWithGoogle,
    TResult Function(String email, String otpCode)? validateOTP,
    required TResult orElse(),
  }) {
    if (validateWithGoogle != null) {
      return validateWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpEventRequestOTP value) requestOTP,
    required TResult Function(EmailOtpEventValidateWithGoogle value)
    validateWithGoogle,
    required TResult Function(EmailOtpEventValidateOTP value) validateOTP,
  }) {
    return validateWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult? Function(EmailOtpEventValidateWithGoogle value)?
    validateWithGoogle,
    TResult? Function(EmailOtpEventValidateOTP value)? validateOTP,
  }) {
    return validateWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult Function(EmailOtpEventValidateWithGoogle value)? validateWithGoogle,
    TResult Function(EmailOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) {
    if (validateWithGoogle != null) {
      return validateWithGoogle(this);
    }
    return orElse();
  }
}

abstract class EmailOtpEventValidateWithGoogle implements EmailOtpEvent {
  const factory EmailOtpEventValidateWithGoogle() =
      _$EmailOtpEventValidateWithGoogleImpl;
}

/// @nodoc
abstract class _$$EmailOtpEventValidateOTPImplCopyWith<$Res> {
  factory _$$EmailOtpEventValidateOTPImplCopyWith(
    _$EmailOtpEventValidateOTPImpl value,
    $Res Function(_$EmailOtpEventValidateOTPImpl) then,
  ) = __$$EmailOtpEventValidateOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String otpCode});
}

/// @nodoc
class __$$EmailOtpEventValidateOTPImplCopyWithImpl<$Res>
    extends _$EmailOtpEventCopyWithImpl<$Res, _$EmailOtpEventValidateOTPImpl>
    implements _$$EmailOtpEventValidateOTPImplCopyWith<$Res> {
  __$$EmailOtpEventValidateOTPImplCopyWithImpl(
    _$EmailOtpEventValidateOTPImpl _value,
    $Res Function(_$EmailOtpEventValidateOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otpCode = null}) {
    return _then(
      _$EmailOtpEventValidateOTPImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        otpCode:
            null == otpCode
                ? _value.otpCode
                : otpCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailOtpEventValidateOTPImpl implements EmailOtpEventValidateOTP {
  const _$EmailOtpEventValidateOTPImpl({
    required this.email,
    required this.otpCode,
  });

  @override
  final String email;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'EmailOtpEvent.validateOTP(email: $email, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOtpEventValidateOTPImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otpCode);

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOtpEventValidateOTPImplCopyWith<_$EmailOtpEventValidateOTPImpl>
  get copyWith => __$$EmailOtpEventValidateOTPImplCopyWithImpl<
    _$EmailOtpEventValidateOTPImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestOTP,
    required TResult Function() validateWithGoogle,
    required TResult Function(String email, String otpCode) validateOTP,
  }) {
    return validateOTP(email, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestOTP,
    TResult? Function()? validateWithGoogle,
    TResult? Function(String email, String otpCode)? validateOTP,
  }) {
    return validateOTP?.call(email, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestOTP,
    TResult Function()? validateWithGoogle,
    TResult Function(String email, String otpCode)? validateOTP,
    required TResult orElse(),
  }) {
    if (validateOTP != null) {
      return validateOTP(email, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailOtpEventRequestOTP value) requestOTP,
    required TResult Function(EmailOtpEventValidateWithGoogle value)
    validateWithGoogle,
    required TResult Function(EmailOtpEventValidateOTP value) validateOTP,
  }) {
    return validateOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult? Function(EmailOtpEventValidateWithGoogle value)?
    validateWithGoogle,
    TResult? Function(EmailOtpEventValidateOTP value)? validateOTP,
  }) {
    return validateOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailOtpEventRequestOTP value)? requestOTP,
    TResult Function(EmailOtpEventValidateWithGoogle value)? validateWithGoogle,
    TResult Function(EmailOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) {
    if (validateOTP != null) {
      return validateOTP(this);
    }
    return orElse();
  }
}

abstract class EmailOtpEventValidateOTP implements EmailOtpEvent {
  const factory EmailOtpEventValidateOTP({
    required final String email,
    required final String otpCode,
  }) = _$EmailOtpEventValidateOTPImpl;

  String get email;
  String get otpCode;

  /// Create a copy of EmailOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailOtpEventValidateOTPImplCopyWith<_$EmailOtpEventValidateOTPImpl>
  get copyWith => throw _privateConstructorUsedError;
}
