// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessageData _$ChatMessageDataFromJson(Map<String, dynamic> json) {
  return _ChatMessageData.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageData {
  String get id => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  ChatStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;
  ContentTypeChat get contentType => throw _privateConstructorUsedError;
  String? get meta => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageDataCopyWith<ChatMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageDataCopyWith<$Res> {
  factory $ChatMessageDataCopyWith(
    ChatMessageData value,
    $Res Function(ChatMessageData) then,
  ) = _$ChatMessageDataCopyWithImpl<$Res, ChatMessageData>;
  @useResult
  $Res call({
    String id,
    String senderId,
    String receiverId,
    String content,
    ChatStatus status,
    DateTime? createdAt,
    DateTime? deliveredAt,
    DateTime? readAt,
    ContentTypeChat contentType,
    String? meta,
  });
}

/// @nodoc
class _$ChatMessageDataCopyWithImpl<$Res, $Val extends ChatMessageData>
    implements $ChatMessageDataCopyWith<$Res> {
  _$ChatMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? receiverId = null,
    Object? content = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? deliveredAt = freezed,
    Object? readAt = freezed,
    Object? contentType = null,
    Object? meta = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            senderId:
                null == senderId
                    ? _value.senderId
                    : senderId // ignore: cast_nullable_to_non_nullable
                        as String,
            receiverId:
                null == receiverId
                    ? _value.receiverId
                    : receiverId // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as ChatStatus,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            deliveredAt:
                freezed == deliveredAt
                    ? _value.deliveredAt
                    : deliveredAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            readAt:
                freezed == readAt
                    ? _value.readAt
                    : readAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            contentType:
                null == contentType
                    ? _value.contentType
                    : contentType // ignore: cast_nullable_to_non_nullable
                        as ContentTypeChat,
            meta:
                freezed == meta
                    ? _value.meta
                    : meta // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageDataImplCopyWith<$Res>
    implements $ChatMessageDataCopyWith<$Res> {
  factory _$$ChatMessageDataImplCopyWith(
    _$ChatMessageDataImpl value,
    $Res Function(_$ChatMessageDataImpl) then,
  ) = __$$ChatMessageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String senderId,
    String receiverId,
    String content,
    ChatStatus status,
    DateTime? createdAt,
    DateTime? deliveredAt,
    DateTime? readAt,
    ContentTypeChat contentType,
    String? meta,
  });
}

/// @nodoc
class __$$ChatMessageDataImplCopyWithImpl<$Res>
    extends _$ChatMessageDataCopyWithImpl<$Res, _$ChatMessageDataImpl>
    implements _$$ChatMessageDataImplCopyWith<$Res> {
  __$$ChatMessageDataImplCopyWithImpl(
    _$ChatMessageDataImpl _value,
    $Res Function(_$ChatMessageDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? receiverId = null,
    Object? content = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? deliveredAt = freezed,
    Object? readAt = freezed,
    Object? contentType = null,
    Object? meta = freezed,
  }) {
    return _then(
      _$ChatMessageDataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        senderId:
            null == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                    as String,
        receiverId:
            null == receiverId
                ? _value.receiverId
                : receiverId // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as ChatStatus,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        deliveredAt:
            freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        readAt:
            freezed == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        contentType:
            null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as ContentTypeChat,
        meta:
            freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageDataImpl implements _ChatMessageData {
  const _$ChatMessageDataImpl({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.content,
    required this.status,
    this.createdAt,
    this.deliveredAt,
    this.readAt,
    required this.contentType,
    this.meta,
  });

  factory _$ChatMessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageDataImplFromJson(json);

  @override
  final String id;
  @override
  final String senderId;
  @override
  final String receiverId;
  @override
  final String content;
  @override
  final ChatStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? deliveredAt;
  @override
  final DateTime? readAt;
  @override
  final ContentTypeChat contentType;
  @override
  final String? meta;

  @override
  String toString() {
    return 'ChatMessageData(id: $id, senderId: $senderId, receiverId: $receiverId, content: $content, status: $status, createdAt: $createdAt, deliveredAt: $deliveredAt, readAt: $readAt, contentType: $contentType, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    senderId,
    receiverId,
    content,
    status,
    createdAt,
    deliveredAt,
    readAt,
    contentType,
    meta,
  );

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageDataImplCopyWith<_$ChatMessageDataImpl> get copyWith =>
      __$$ChatMessageDataImplCopyWithImpl<_$ChatMessageDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageDataImplToJson(this);
  }
}

abstract class _ChatMessageData implements ChatMessageData {
  const factory _ChatMessageData({
    required final String id,
    required final String senderId,
    required final String receiverId,
    required final String content,
    required final ChatStatus status,
    final DateTime? createdAt,
    final DateTime? deliveredAt,
    final DateTime? readAt,
    required final ContentTypeChat contentType,
    final String? meta,
  }) = _$ChatMessageDataImpl;

  factory _ChatMessageData.fromJson(Map<String, dynamic> json) =
      _$ChatMessageDataImpl.fromJson;

  @override
  String get id;
  @override
  String get senderId;
  @override
  String get receiverId;
  @override
  String get content;
  @override
  ChatStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get deliveredAt;
  @override
  DateTime? get readAt;
  @override
  ContentTypeChat get contentType;
  @override
  String? get meta;

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageDataImplCopyWith<_$ChatMessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
