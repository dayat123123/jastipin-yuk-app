// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GoogleAccountModel {
  String get uid => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  /// Create a copy of GoogleAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleAccountModelCopyWith<GoogleAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAccountModelCopyWith<$Res> {
  factory $GoogleAccountModelCopyWith(
    GoogleAccountModel value,
    $Res Function(GoogleAccountModel) then,
  ) = _$GoogleAccountModelCopyWithImpl<$Res, GoogleAccountModel>;
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
class _$GoogleAccountModelCopyWithImpl<$Res, $Val extends GoogleAccountModel>
    implements $GoogleAccountModelCopyWith<$Res> {
  _$GoogleAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleAccountModel
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
abstract class _$$GoogleAccountModelImplCopyWith<$Res>
    implements $GoogleAccountModelCopyWith<$Res> {
  factory _$$GoogleAccountModelImplCopyWith(
    _$GoogleAccountModelImpl value,
    $Res Function(_$GoogleAccountModelImpl) then,
  ) = __$$GoogleAccountModelImplCopyWithImpl<$Res>;
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
class __$$GoogleAccountModelImplCopyWithImpl<$Res>
    extends _$GoogleAccountModelCopyWithImpl<$Res, _$GoogleAccountModelImpl>
    implements _$$GoogleAccountModelImplCopyWith<$Res> {
  __$$GoogleAccountModelImplCopyWithImpl(
    _$GoogleAccountModelImpl _value,
    $Res Function(_$GoogleAccountModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GoogleAccountModel
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
      _$GoogleAccountModelImpl(
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

class _$GoogleAccountModelImpl implements _GoogleAccountModel {
  const _$GoogleAccountModelImpl({
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
    return 'GoogleAccountModel(uid: $uid, emailVerified: $emailVerified, email: $email, idToken: $idToken, photoURL: $photoURL, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAccountModelImpl &&
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

  /// Create a copy of GoogleAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAccountModelImplCopyWith<_$GoogleAccountModelImpl> get copyWith =>
      __$$GoogleAccountModelImplCopyWithImpl<_$GoogleAccountModelImpl>(
        this,
        _$identity,
      );
}

abstract class _GoogleAccountModel implements GoogleAccountModel {
  const factory _GoogleAccountModel({
    required final String uid,
    required final bool emailVerified,
    required final String email,
    required final String idToken,
    final String? photoURL,
    final String? displayName,
  }) = _$GoogleAccountModelImpl;

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

  /// Create a copy of GoogleAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleAccountModelImplCopyWith<_$GoogleAccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
