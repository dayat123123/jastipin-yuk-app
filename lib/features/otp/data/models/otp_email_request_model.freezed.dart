// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_email_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OtpEmailRequestModel _$OtpEmailRequestModelFromJson(Map<String, dynamic> json) {
  return _OtpEmailRequestModel.fromJson(json);
}

/// @nodoc
mixin _$OtpEmailRequestModel {
  String get expireAt => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this OtpEmailRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpEmailRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpEmailRequestModelCopyWith<OtpEmailRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEmailRequestModelCopyWith<$Res> {
  factory $OtpEmailRequestModelCopyWith(
    OtpEmailRequestModel value,
    $Res Function(OtpEmailRequestModel) then,
  ) = _$OtpEmailRequestModelCopyWithImpl<$Res, OtpEmailRequestModel>;
  @useResult
  $Res call({String expireAt, String email});
}

/// @nodoc
class _$OtpEmailRequestModelCopyWithImpl<
  $Res,
  $Val extends OtpEmailRequestModel
>
    implements $OtpEmailRequestModelCopyWith<$Res> {
  _$OtpEmailRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpEmailRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expireAt = null, Object? email = null}) {
    return _then(
      _value.copyWith(
            expireAt:
                null == expireAt
                    ? _value.expireAt
                    : expireAt // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OtpEmailRequestModelImplCopyWith<$Res>
    implements $OtpEmailRequestModelCopyWith<$Res> {
  factory _$$OtpEmailRequestModelImplCopyWith(
    _$OtpEmailRequestModelImpl value,
    $Res Function(_$OtpEmailRequestModelImpl) then,
  ) = __$$OtpEmailRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String expireAt, String email});
}

/// @nodoc
class __$$OtpEmailRequestModelImplCopyWithImpl<$Res>
    extends _$OtpEmailRequestModelCopyWithImpl<$Res, _$OtpEmailRequestModelImpl>
    implements _$$OtpEmailRequestModelImplCopyWith<$Res> {
  __$$OtpEmailRequestModelImplCopyWithImpl(
    _$OtpEmailRequestModelImpl _value,
    $Res Function(_$OtpEmailRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpEmailRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? expireAt = null, Object? email = null}) {
    return _then(
      _$OtpEmailRequestModelImpl(
        expireAt:
            null == expireAt
                ? _value.expireAt
                : expireAt // ignore: cast_nullable_to_non_nullable
                    as String,
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
@JsonSerializable()
class _$OtpEmailRequestModelImpl implements _OtpEmailRequestModel {
  const _$OtpEmailRequestModelImpl({
    required this.expireAt,
    required this.email,
  });

  factory _$OtpEmailRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpEmailRequestModelImplFromJson(json);

  @override
  final String expireAt;
  @override
  final String email;

  @override
  String toString() {
    return 'OtpEmailRequestModel(expireAt: $expireAt, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpEmailRequestModelImpl &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expireAt, email);

  /// Create a copy of OtpEmailRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpEmailRequestModelImplCopyWith<_$OtpEmailRequestModelImpl>
  get copyWith =>
      __$$OtpEmailRequestModelImplCopyWithImpl<_$OtpEmailRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpEmailRequestModelImplToJson(this);
  }
}

abstract class _OtpEmailRequestModel implements OtpEmailRequestModel {
  const factory _OtpEmailRequestModel({
    required final String expireAt,
    required final String email,
  }) = _$OtpEmailRequestModelImpl;

  factory _OtpEmailRequestModel.fromJson(Map<String, dynamic> json) =
      _$OtpEmailRequestModelImpl.fromJson;

  @override
  String get expireAt;
  @override
  String get email;

  /// Create a copy of OtpEmailRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpEmailRequestModelImplCopyWith<_$OtpEmailRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
