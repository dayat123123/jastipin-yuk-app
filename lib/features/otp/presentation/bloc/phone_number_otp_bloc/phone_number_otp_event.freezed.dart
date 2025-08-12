// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PhoneNumberOtpEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) requestOTP,
    required TResult Function(String phoneNumber, String otpCode) validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? requestOTP,
    TResult? Function(String phoneNumber, String otpCode)? validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? requestOTP,
    TResult Function(String phoneNumber, String otpCode)? validateOTP,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberOtpEventRequestOTP value) requestOTP,
    required TResult Function(PhoneNumberOtpEventValidateOTP value) validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberOtpEventRequestOTP value)? requestOTP,
    TResult? Function(PhoneNumberOtpEventValidateOTP value)? validateOTP,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberOtpEventRequestOTP value)? requestOTP,
    TResult Function(PhoneNumberOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneNumberOtpEventCopyWith<PhoneNumberOtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberOtpEventCopyWith<$Res> {
  factory $PhoneNumberOtpEventCopyWith(
    PhoneNumberOtpEvent value,
    $Res Function(PhoneNumberOtpEvent) then,
  ) = _$PhoneNumberOtpEventCopyWithImpl<$Res, PhoneNumberOtpEvent>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberOtpEventCopyWithImpl<$Res, $Val extends PhoneNumberOtpEvent>
    implements $PhoneNumberOtpEventCopyWith<$Res> {
  _$PhoneNumberOtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null}) {
    return _then(
      _value.copyWith(
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhoneNumberOtpEventRequestOTPImplCopyWith<$Res>
    implements $PhoneNumberOtpEventCopyWith<$Res> {
  factory _$$PhoneNumberOtpEventRequestOTPImplCopyWith(
    _$PhoneNumberOtpEventRequestOTPImpl value,
    $Res Function(_$PhoneNumberOtpEventRequestOTPImpl) then,
  ) = __$$PhoneNumberOtpEventRequestOTPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberOtpEventRequestOTPImplCopyWithImpl<$Res>
    extends
        _$PhoneNumberOtpEventCopyWithImpl<
          $Res,
          _$PhoneNumberOtpEventRequestOTPImpl
        >
    implements _$$PhoneNumberOtpEventRequestOTPImplCopyWith<$Res> {
  __$$PhoneNumberOtpEventRequestOTPImplCopyWithImpl(
    _$PhoneNumberOtpEventRequestOTPImpl _value,
    $Res Function(_$PhoneNumberOtpEventRequestOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null}) {
    return _then(
      _$PhoneNumberOtpEventRequestOTPImpl(
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$PhoneNumberOtpEventRequestOTPImpl
    implements PhoneNumberOtpEventRequestOTP {
  const _$PhoneNumberOtpEventRequestOTPImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneNumberOtpEvent.requestOTP(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberOtpEventRequestOTPImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberOtpEventRequestOTPImplCopyWith<
    _$PhoneNumberOtpEventRequestOTPImpl
  >
  get copyWith => __$$PhoneNumberOtpEventRequestOTPImplCopyWithImpl<
    _$PhoneNumberOtpEventRequestOTPImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) requestOTP,
    required TResult Function(String phoneNumber, String otpCode) validateOTP,
  }) {
    return requestOTP(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? requestOTP,
    TResult? Function(String phoneNumber, String otpCode)? validateOTP,
  }) {
    return requestOTP?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? requestOTP,
    TResult Function(String phoneNumber, String otpCode)? validateOTP,
    required TResult orElse(),
  }) {
    if (requestOTP != null) {
      return requestOTP(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberOtpEventRequestOTP value) requestOTP,
    required TResult Function(PhoneNumberOtpEventValidateOTP value) validateOTP,
  }) {
    return requestOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberOtpEventRequestOTP value)? requestOTP,
    TResult? Function(PhoneNumberOtpEventValidateOTP value)? validateOTP,
  }) {
    return requestOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberOtpEventRequestOTP value)? requestOTP,
    TResult Function(PhoneNumberOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) {
    if (requestOTP != null) {
      return requestOTP(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberOtpEventRequestOTP implements PhoneNumberOtpEvent {
  const factory PhoneNumberOtpEventRequestOTP({
    required final String phoneNumber,
  }) = _$PhoneNumberOtpEventRequestOTPImpl;

  @override
  String get phoneNumber;

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberOtpEventRequestOTPImplCopyWith<
    _$PhoneNumberOtpEventRequestOTPImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberOtpEventValidateOTPImplCopyWith<$Res>
    implements $PhoneNumberOtpEventCopyWith<$Res> {
  factory _$$PhoneNumberOtpEventValidateOTPImplCopyWith(
    _$PhoneNumberOtpEventValidateOTPImpl value,
    $Res Function(_$PhoneNumberOtpEventValidateOTPImpl) then,
  ) = __$$PhoneNumberOtpEventValidateOTPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String otpCode});
}

/// @nodoc
class __$$PhoneNumberOtpEventValidateOTPImplCopyWithImpl<$Res>
    extends
        _$PhoneNumberOtpEventCopyWithImpl<
          $Res,
          _$PhoneNumberOtpEventValidateOTPImpl
        >
    implements _$$PhoneNumberOtpEventValidateOTPImplCopyWith<$Res> {
  __$$PhoneNumberOtpEventValidateOTPImplCopyWithImpl(
    _$PhoneNumberOtpEventValidateOTPImpl _value,
    $Res Function(_$PhoneNumberOtpEventValidateOTPImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null, Object? otpCode = null}) {
    return _then(
      _$PhoneNumberOtpEventValidateOTPImpl(
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
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

class _$PhoneNumberOtpEventValidateOTPImpl
    implements PhoneNumberOtpEventValidateOTP {
  const _$PhoneNumberOtpEventValidateOTPImpl({
    required this.phoneNumber,
    required this.otpCode,
  });

  @override
  final String phoneNumber;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'PhoneNumberOtpEvent.validateOTP(phoneNumber: $phoneNumber, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberOtpEventValidateOTPImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otpCode);

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberOtpEventValidateOTPImplCopyWith<
    _$PhoneNumberOtpEventValidateOTPImpl
  >
  get copyWith => __$$PhoneNumberOtpEventValidateOTPImplCopyWithImpl<
    _$PhoneNumberOtpEventValidateOTPImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) requestOTP,
    required TResult Function(String phoneNumber, String otpCode) validateOTP,
  }) {
    return validateOTP(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? requestOTP,
    TResult? Function(String phoneNumber, String otpCode)? validateOTP,
  }) {
    return validateOTP?.call(phoneNumber, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? requestOTP,
    TResult Function(String phoneNumber, String otpCode)? validateOTP,
    required TResult orElse(),
  }) {
    if (validateOTP != null) {
      return validateOTP(phoneNumber, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberOtpEventRequestOTP value) requestOTP,
    required TResult Function(PhoneNumberOtpEventValidateOTP value) validateOTP,
  }) {
    return validateOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberOtpEventRequestOTP value)? requestOTP,
    TResult? Function(PhoneNumberOtpEventValidateOTP value)? validateOTP,
  }) {
    return validateOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberOtpEventRequestOTP value)? requestOTP,
    TResult Function(PhoneNumberOtpEventValidateOTP value)? validateOTP,
    required TResult orElse(),
  }) {
    if (validateOTP != null) {
      return validateOTP(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberOtpEventValidateOTP implements PhoneNumberOtpEvent {
  const factory PhoneNumberOtpEventValidateOTP({
    required final String phoneNumber,
    required final String otpCode,
  }) = _$PhoneNumberOtpEventValidateOTPImpl;

  @override
  String get phoneNumber;
  String get otpCode;

  /// Create a copy of PhoneNumberOtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberOtpEventValidateOTPImplCopyWith<
    _$PhoneNumberOtpEventValidateOTPImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
