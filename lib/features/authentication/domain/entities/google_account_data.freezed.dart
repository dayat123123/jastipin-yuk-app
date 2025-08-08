// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GoogleAccountData {
  String get uid => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  /// Create a copy of GoogleAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleAccountDataCopyWith<GoogleAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAccountDataCopyWith<$Res> {
  factory $GoogleAccountDataCopyWith(
    GoogleAccountData value,
    $Res Function(GoogleAccountData) then,
  ) = _$GoogleAccountDataCopyWithImpl<$Res, GoogleAccountData>;
  @useResult
  $Res call({
    String uid,
    bool emailVerified,
    String email,
    String idToken,
    String? photoURL,
    String? displayName,
  });
}

/// @nodoc
class _$GoogleAccountDataCopyWithImpl<$Res, $Val extends GoogleAccountData>
    implements $GoogleAccountDataCopyWith<$Res> {
  _$GoogleAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? emailVerified = null,
    Object? email = null,
    Object? idToken = null,
    Object? photoURL = freezed,
    Object? displayName = freezed,
  }) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            emailVerified:
                null == emailVerified
                    ? _value.emailVerified
                    : emailVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            idToken:
                null == idToken
                    ? _value.idToken
                    : idToken // ignore: cast_nullable_to_non_nullable
                        as String,
            photoURL:
                freezed == photoURL
                    ? _value.photoURL
                    : photoURL // ignore: cast_nullable_to_non_nullable
                        as String?,
            displayName:
                freezed == displayName
                    ? _value.displayName
                    : displayName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GoogleAccountDataImplCopyWith<$Res>
    implements $GoogleAccountDataCopyWith<$Res> {
  factory _$$GoogleAccountDataImplCopyWith(
    _$GoogleAccountDataImpl value,
    $Res Function(_$GoogleAccountDataImpl) then,
  ) = __$$GoogleAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    bool emailVerified,
    String email,
    String idToken,
    String? photoURL,
    String? displayName,
  });
}

/// @nodoc
class __$$GoogleAccountDataImplCopyWithImpl<$Res>
    extends _$GoogleAccountDataCopyWithImpl<$Res, _$GoogleAccountDataImpl>
    implements _$$GoogleAccountDataImplCopyWith<$Res> {
  __$$GoogleAccountDataImplCopyWithImpl(
    _$GoogleAccountDataImpl _value,
    $Res Function(_$GoogleAccountDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoogleAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? emailVerified = null,
    Object? email = null,
    Object? idToken = null,
    Object? photoURL = freezed,
    Object? displayName = freezed,
  }) {
    return _then(
      _$GoogleAccountDataImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        emailVerified:
            null == emailVerified
                ? _value.emailVerified
                : emailVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        idToken:
            null == idToken
                ? _value.idToken
                : idToken // ignore: cast_nullable_to_non_nullable
                    as String,
        photoURL:
            freezed == photoURL
                ? _value.photoURL
                : photoURL // ignore: cast_nullable_to_non_nullable
                    as String?,
        displayName:
            freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$GoogleAccountDataImpl implements _GoogleAccountData {
  const _$GoogleAccountDataImpl({
    required this.uid,
    required this.emailVerified,
    required this.email,
    required this.idToken,
    this.photoURL,
    this.displayName,
  });

  @override
  final String uid;
  @override
  final bool emailVerified;
  @override
  final String email;
  @override
  final String idToken;
  @override
  final String? photoURL;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'GoogleAccountData(uid: $uid, emailVerified: $emailVerified, email: $email, idToken: $idToken, photoURL: $photoURL, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAccountDataImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    emailVerified,
    email,
    idToken,
    photoURL,
    displayName,
  );

  /// Create a copy of GoogleAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAccountDataImplCopyWith<_$GoogleAccountDataImpl> get copyWith =>
      __$$GoogleAccountDataImplCopyWithImpl<_$GoogleAccountDataImpl>(
        this,
        _$identity,
      );
}

abstract class _GoogleAccountData implements GoogleAccountData {
  const factory _GoogleAccountData({
    required final String uid,
    required final bool emailVerified,
    required final String email,
    required final String idToken,
    final String? photoURL,
    final String? displayName,
  }) = _$GoogleAccountDataImpl;

  @override
  String get uid;
  @override
  bool get emailVerified;
  @override
  String get email;
  @override
  String get idToken;
  @override
  String? get photoURL;
  @override
  String? get displayName;

  /// Create a copy of GoogleAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleAccountDataImplCopyWith<_$GoogleAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
