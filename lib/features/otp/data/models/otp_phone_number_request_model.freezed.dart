// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_phone_number_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OtpPhoneNumberRequestModel _$OtpPhoneNumberRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _OtpPhoneNumberRequestModel.fromJson(json);
}

/// @nodoc
mixin _$OtpPhoneNumberRequestModel {
  String get expireAt => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this OtpPhoneNumberRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpPhoneNumberRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpPhoneNumberRequestModelCopyWith<OtpPhoneNumberRequestModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpPhoneNumberRequestModelCopyWith<$Res> {
  factory $OtpPhoneNumberRequestModelCopyWith(
    OtpPhoneNumberRequestModel value,
    $Res Function(OtpPhoneNumberRequestModel) then,
  ) =
      _$OtpPhoneNumberRequestModelCopyWithImpl<
        $Res,
        OtpPhoneNumberRequestModel
      >;
  @useResult
  $Res call({String expireAt, String phoneNumber});
}

/// @nodoc
class _$OtpPhoneNumberRequestModelCopyWithImpl<
  $Res,
  $Val extends OtpPhoneNumberRequestModel
>
    implements $OtpPhoneNumberRequestModelCopyWith<$Res> {
  _$OtpPhoneNumberRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpPhoneNumberRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expireAt = null, Object? phoneNumber = null}) {
    return _then(
      _value.copyWith(
            expireAt:
                null == expireAt
                    ? _value.expireAt
                    : expireAt // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$OtpPhoneNumberRequestModelImplCopyWith<$Res>
    implements $OtpPhoneNumberRequestModelCopyWith<$Res> {
  factory _$$OtpPhoneNumberRequestModelImplCopyWith(
    _$OtpPhoneNumberRequestModelImpl value,
    $Res Function(_$OtpPhoneNumberRequestModelImpl) then,
  ) = __$$OtpPhoneNumberRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String expireAt, String phoneNumber});
}

/// @nodoc
class __$$OtpPhoneNumberRequestModelImplCopyWithImpl<$Res>
    extends
        _$OtpPhoneNumberRequestModelCopyWithImpl<
          $Res,
          _$OtpPhoneNumberRequestModelImpl
        >
    implements _$$OtpPhoneNumberRequestModelImplCopyWith<$Res> {
  __$$OtpPhoneNumberRequestModelImplCopyWithImpl(
    _$OtpPhoneNumberRequestModelImpl _value,
    $Res Function(_$OtpPhoneNumberRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpPhoneNumberRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expireAt = null, Object? phoneNumber = null}) {
    return _then(
      _$OtpPhoneNumberRequestModelImpl(
        expireAt:
            null == expireAt
                ? _value.expireAt
                : expireAt // ignore: cast_nullable_to_non_nullable
                    as String,
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
@JsonSerializable()
class _$OtpPhoneNumberRequestModelImpl implements _OtpPhoneNumberRequestModel {
  const _$OtpPhoneNumberRequestModelImpl({
    required this.expireAt,
    required this.phoneNumber,
  });

  factory _$OtpPhoneNumberRequestModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$OtpPhoneNumberRequestModelImplFromJson(json);

  @override
  final String expireAt;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OtpPhoneNumberRequestModel(expireAt: $expireAt, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpPhoneNumberRequestModelImpl &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expireAt, phoneNumber);

  /// Create a copy of OtpPhoneNumberRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpPhoneNumberRequestModelImplCopyWith<_$OtpPhoneNumberRequestModelImpl>
  get copyWith => __$$OtpPhoneNumberRequestModelImplCopyWithImpl<
    _$OtpPhoneNumberRequestModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpPhoneNumberRequestModelImplToJson(this);
  }
}

abstract class _OtpPhoneNumberRequestModel
    implements OtpPhoneNumberRequestModel {
  const factory _OtpPhoneNumberRequestModel({
    required final String expireAt,
    required final String phoneNumber,
  }) = _$OtpPhoneNumberRequestModelImpl;

  factory _OtpPhoneNumberRequestModel.fromJson(Map<String, dynamic> json) =
      _$OtpPhoneNumberRequestModelImpl.fromJson;

  @override
  String get expireAt;
  @override
  String get phoneNumber;

  /// Create a copy of OtpPhoneNumberRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpPhoneNumberRequestModelImplCopyWith<_$OtpPhoneNumberRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
