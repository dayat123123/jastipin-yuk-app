// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_email_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OtpEmailRequestData {
  String get email => throw _privateConstructorUsedError;
  DateTime? get expireAt => throw _privateConstructorUsedError;

  /// Create a copy of OtpEmailRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpEmailRequestDataCopyWith<OtpEmailRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEmailRequestDataCopyWith<$Res> {
  factory $OtpEmailRequestDataCopyWith(
    OtpEmailRequestData value,
    $Res Function(OtpEmailRequestData) then,
  ) = _$OtpEmailRequestDataCopyWithImpl<$Res, OtpEmailRequestData>;
  @useResult
  $Res call({String email, DateTime? expireAt});
}

/// @nodoc
class _$OtpEmailRequestDataCopyWithImpl<$Res, $Val extends OtpEmailRequestData>
    implements $OtpEmailRequestDataCopyWith<$Res> {
  _$OtpEmailRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpEmailRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? expireAt = freezed}) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OtpEmailRequestDataImplCopyWith<$Res>
    implements $OtpEmailRequestDataCopyWith<$Res> {
  factory _$$OtpEmailRequestDataImplCopyWith(
    _$OtpEmailRequestDataImpl value,
    $Res Function(_$OtpEmailRequestDataImpl) then,
  ) = __$$OtpEmailRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, DateTime? expireAt});
}

/// @nodoc
class __$$OtpEmailRequestDataImplCopyWithImpl<$Res>
    extends _$OtpEmailRequestDataCopyWithImpl<$Res, _$OtpEmailRequestDataImpl>
    implements _$$OtpEmailRequestDataImplCopyWith<$Res> {
  __$$OtpEmailRequestDataImplCopyWithImpl(
    _$OtpEmailRequestDataImpl _value,
    $Res Function(_$OtpEmailRequestDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpEmailRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? expireAt = freezed}) {
    return _then(
      _$OtpEmailRequestDataImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
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

class _$OtpEmailRequestDataImpl implements _OtpEmailRequestData {
  const _$OtpEmailRequestDataImpl({required this.email, this.expireAt});

  @override
  final String email;
  @override
  final DateTime? expireAt;

  @override
  String toString() {
    return 'OtpEmailRequestData(email: $email, expireAt: $expireAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpEmailRequestDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, expireAt);

  /// Create a copy of OtpEmailRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpEmailRequestDataImplCopyWith<_$OtpEmailRequestDataImpl> get copyWith =>
      __$$OtpEmailRequestDataImplCopyWithImpl<_$OtpEmailRequestDataImpl>(
        this,
        _$identity,
      );
}

abstract class _OtpEmailRequestData implements OtpEmailRequestData {
  const factory _OtpEmailRequestData({
    required final String email,
    final DateTime? expireAt,
  }) = _$OtpEmailRequestDataImpl;

  @override
  String get email;
  @override
  DateTime? get expireAt;

  /// Create a copy of OtpEmailRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpEmailRequestDataImplCopyWith<_$OtpEmailRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
