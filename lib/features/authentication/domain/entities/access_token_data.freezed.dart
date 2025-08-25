// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AccessTokenData _$AccessTokenDataFromJson(Map<String, dynamic> json) {
  return _AccessTokenData.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenData {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this AccessTokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccessTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessTokenDataCopyWith<AccessTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenDataCopyWith<$Res> {
  factory $AccessTokenDataCopyWith(
    AccessTokenData value,
    $Res Function(AccessTokenData) then,
  ) = _$AccessTokenDataCopyWithImpl<$Res, AccessTokenData>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$AccessTokenDataCopyWithImpl<$Res, $Val extends AccessTokenData>
    implements $AccessTokenDataCopyWith<$Res> {
  _$AccessTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _value.copyWith(
            accessToken:
                null == accessToken
                    ? _value.accessToken
                    : accessToken // ignore: cast_nullable_to_non_nullable
                        as String,
            refreshToken:
                null == refreshToken
                    ? _value.refreshToken
                    : refreshToken // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AccessTokenDataImplCopyWith<$Res>
    implements $AccessTokenDataCopyWith<$Res> {
  factory _$$AccessTokenDataImplCopyWith(
    _$AccessTokenDataImpl value,
    $Res Function(_$AccessTokenDataImpl) then,
  ) = __$$AccessTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$AccessTokenDataImplCopyWithImpl<$Res>
    extends _$AccessTokenDataCopyWithImpl<$Res, _$AccessTokenDataImpl>
    implements _$$AccessTokenDataImplCopyWith<$Res> {
  __$$AccessTokenDataImplCopyWithImpl(
    _$AccessTokenDataImpl _value,
    $Res Function(_$AccessTokenDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccessTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _$AccessTokenDataImpl(
        accessToken:
            null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                    as String,
        refreshToken:
            null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenDataImpl implements _AccessTokenData {
  const _$AccessTokenDataImpl({
    required this.accessToken,
    required this.refreshToken,
  });

  factory _$AccessTokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenDataImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AccessTokenData(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of AccessTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenDataImplCopyWith<_$AccessTokenDataImpl> get copyWith =>
      __$$AccessTokenDataImplCopyWithImpl<_$AccessTokenDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenDataImplToJson(this);
  }
}

abstract class _AccessTokenData implements AccessTokenData {
  const factory _AccessTokenData({
    required final String accessToken,
    required final String refreshToken,
  }) = _$AccessTokenDataImpl;

  factory _AccessTokenData.fromJson(Map<String, dynamic> json) =
      _$AccessTokenDataImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;

  /// Create a copy of AccessTokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessTokenDataImplCopyWith<_$AccessTokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
