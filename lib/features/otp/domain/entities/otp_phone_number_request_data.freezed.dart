// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_phone_number_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OtpPhoneNumberRequestData {
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime? get expireAt => throw _privateConstructorUsedError;

  /// Create a copy of OtpPhoneNumberRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpPhoneNumberRequestDataCopyWith<OtpPhoneNumberRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpPhoneNumberRequestDataCopyWith<$Res> {
  factory $OtpPhoneNumberRequestDataCopyWith(
    OtpPhoneNumberRequestData value,
    $Res Function(OtpPhoneNumberRequestData) then,
  ) = _$OtpPhoneNumberRequestDataCopyWithImpl<$Res, OtpPhoneNumberRequestData>;
  @useResult
  $Res call({String phoneNumber, DateTime? expireAt});
}

/// @nodoc
class _$OtpPhoneNumberRequestDataCopyWithImpl<
  $Res,
  $Val extends OtpPhoneNumberRequestData
>
    implements $OtpPhoneNumberRequestDataCopyWith<$Res> {
  _$OtpPhoneNumberRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpPhoneNumberRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null, Object? expireAt = freezed}) {
    return _then(
      _value.copyWith(
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            expireAt:
                freezed == expireAt
                    ? _value.expireAt
                    : expireAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OtpPhoneNumberRequestDataImplCopyWith<$Res>
    implements $OtpPhoneNumberRequestDataCopyWith<$Res> {
  factory _$$OtpPhoneNumberRequestDataImplCopyWith(
    _$OtpPhoneNumberRequestDataImpl value,
    $Res Function(_$OtpPhoneNumberRequestDataImpl) then,
  ) = __$$OtpPhoneNumberRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, DateTime? expireAt});
}

/// @nodoc
class __$$OtpPhoneNumberRequestDataImplCopyWithImpl<$Res>
    extends
        _$OtpPhoneNumberRequestDataCopyWithImpl<
          $Res,
          _$OtpPhoneNumberRequestDataImpl
        >
    implements _$$OtpPhoneNumberRequestDataImplCopyWith<$Res> {
  __$$OtpPhoneNumberRequestDataImplCopyWithImpl(
    _$OtpPhoneNumberRequestDataImpl _value,
    $Res Function(_$OtpPhoneNumberRequestDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpPhoneNumberRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null, Object? expireAt = freezed}) {
    return _then(
      _$OtpPhoneNumberRequestDataImpl(
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        expireAt:
            freezed == expireAt
                ? _value.expireAt
                : expireAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$OtpPhoneNumberRequestDataImpl implements _OtpPhoneNumberRequestData {
  const _$OtpPhoneNumberRequestDataImpl({
    required this.phoneNumber,
    this.expireAt,
  });

  @override
  final String phoneNumber;
  @override
  final DateTime? expireAt;

  @override
  String toString() {
    return 'OtpPhoneNumberRequestData(phoneNumber: $phoneNumber, expireAt: $expireAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpPhoneNumberRequestDataImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, expireAt);

  /// Create a copy of OtpPhoneNumberRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpPhoneNumberRequestDataImplCopyWith<_$OtpPhoneNumberRequestDataImpl>
  get copyWith => __$$OtpPhoneNumberRequestDataImplCopyWithImpl<
    _$OtpPhoneNumberRequestDataImpl
  >(this, _$identity);
}

abstract class _OtpPhoneNumberRequestData implements OtpPhoneNumberRequestData {
  const factory _OtpPhoneNumberRequestData({
    required final String phoneNumber,
    final DateTime? expireAt,
  }) = _$OtpPhoneNumberRequestDataImpl;

  @override
  String get phoneNumber;
  @override
  DateTime? get expireAt;

  /// Create a copy of OtpPhoneNumberRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpPhoneNumberRequestDataImplCopyWith<_$OtpPhoneNumberRequestDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
