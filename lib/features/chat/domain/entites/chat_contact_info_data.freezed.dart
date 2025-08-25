// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_contact_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatContactInfoData _$ChatContactInfoDataFromJson(Map<String, dynamic> json) {
  return _ChatContactInfoData.fromJson(json);
}

/// @nodoc
mixin _$ChatContactInfoData {
  String get userId => throw _privateConstructorUsedError;
  ContentTypeChat get contentType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  ChatStatus get status => throw _privateConstructorUsedError;

  /// Serializes this ChatContactInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatContactInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatContactInfoDataCopyWith<ChatContactInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatContactInfoDataCopyWith<$Res> {
  factory $ChatContactInfoDataCopyWith(
    ChatContactInfoData value,
    $Res Function(ChatContactInfoData) then,
  ) = _$ChatContactInfoDataCopyWithImpl<$Res, ChatContactInfoData>;
  @useResult
  $Res call({
    String userId,
    ContentTypeChat contentType,
    String content,
    int unreadCount,
    ChatStatus status,
  });
}

/// @nodoc
class _$ChatContactInfoDataCopyWithImpl<$Res, $Val extends ChatContactInfoData>
    implements $ChatContactInfoDataCopyWith<$Res> {
  _$ChatContactInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatContactInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? contentType = null,
    Object? content = null,
    Object? unreadCount = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            contentType:
                null == contentType
                    ? _value.contentType
                    : contentType // ignore: cast_nullable_to_non_nullable
                        as ContentTypeChat,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            unreadCount:
                null == unreadCount
                    ? _value.unreadCount
                    : unreadCount // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as ChatStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatContactInfoDataImplCopyWith<$Res>
    implements $ChatContactInfoDataCopyWith<$Res> {
  factory _$$ChatContactInfoDataImplCopyWith(
    _$ChatContactInfoDataImpl value,
    $Res Function(_$ChatContactInfoDataImpl) then,
  ) = __$$ChatContactInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    ContentTypeChat contentType,
    String content,
    int unreadCount,
    ChatStatus status,
  });
}

/// @nodoc
class __$$ChatContactInfoDataImplCopyWithImpl<$Res>
    extends _$ChatContactInfoDataCopyWithImpl<$Res, _$ChatContactInfoDataImpl>
    implements _$$ChatContactInfoDataImplCopyWith<$Res> {
  __$$ChatContactInfoDataImplCopyWithImpl(
    _$ChatContactInfoDataImpl _value,
    $Res Function(_$ChatContactInfoDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatContactInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? contentType = null,
    Object? content = null,
    Object? unreadCount = null,
    Object? status = null,
  }) {
    return _then(
      _$ChatContactInfoDataImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        contentType:
            null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as ContentTypeChat,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        unreadCount:
            null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as ChatStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatContactInfoDataImpl implements _ChatContactInfoData {
  const _$ChatContactInfoDataImpl({
    required this.userId,
    required this.contentType,
    required this.content,
    this.unreadCount = 0,
    this.status = ChatStatus.pending,
  });

  factory _$ChatContactInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatContactInfoDataImplFromJson(json);

  @override
  final String userId;
  @override
  final ContentTypeChat contentType;
  @override
  final String content;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  @JsonKey()
  final ChatStatus status;

  @override
  String toString() {
    return 'ChatContactInfoData(userId: $userId, contentType: $contentType, content: $content, unreadCount: $unreadCount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatContactInfoDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    contentType,
    content,
    unreadCount,
    status,
  );

  /// Create a copy of ChatContactInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatContactInfoDataImplCopyWith<_$ChatContactInfoDataImpl> get copyWith =>
      __$$ChatContactInfoDataImplCopyWithImpl<_$ChatContactInfoDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatContactInfoDataImplToJson(this);
  }
}

abstract class _ChatContactInfoData implements ChatContactInfoData {
  const factory _ChatContactInfoData({
    required final String userId,
    required final ContentTypeChat contentType,
    required final String content,
    final int unreadCount,
    final ChatStatus status,
  }) = _$ChatContactInfoDataImpl;

  factory _ChatContactInfoData.fromJson(Map<String, dynamic> json) =
      _$ChatContactInfoDataImpl.fromJson;

  @override
  String get userId;
  @override
  ContentTypeChat get contentType;
  @override
  String get content;
  @override
  int get unreadCount;
  @override
  ChatStatus get status;

  /// Create a copy of ChatContactInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatContactInfoDataImplCopyWith<_$ChatContactInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
