// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get senderId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get receiverId => throw _privateConstructorUsedError;
  @HiveField(3)
  String get content => throw _privateConstructorUsedError;
  @HiveField(4)
  String get status => throw _privateConstructorUsedError;
  @HiveField(5)
  String get createdAt => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get deliveredAt => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get readAt => throw _privateConstructorUsedError;
  @HiveField(8)
  String get contentType => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get meta => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
    ChatMessageModel value,
    $Res Function(ChatMessageModel) then,
  ) = _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call({
    @HiveField(0) String id,
    @HiveField(1) String senderId,
    @HiveField(2) String receiverId,
    @HiveField(3) String content,
    @HiveField(4) String status,
    @HiveField(5) String createdAt,
    @HiveField(6) String? deliveredAt,
    @HiveField(7) String? readAt,
    @HiveField(8) String contentType,
    @HiveField(9) String? meta,
  });
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? receiverId = null,
    Object? content = null,
    Object? status = null,
    Object? createdAt = null,
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
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveredAt:
                freezed == deliveredAt
                    ? _value.deliveredAt
                    : deliveredAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            readAt:
                freezed == readAt
                    ? _value.readAt
                    : readAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            contentType:
                null == contentType
                    ? _value.contentType
                    : contentType // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(
    _$ChatMessageModelImpl value,
    $Res Function(_$ChatMessageModelImpl) then,
  ) = __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) String id,
    @HiveField(1) String senderId,
    @HiveField(2) String receiverId,
    @HiveField(3) String content,
    @HiveField(4) String status,
    @HiveField(5) String createdAt,
    @HiveField(6) String? deliveredAt,
    @HiveField(7) String? readAt,
    @HiveField(8) String contentType,
    @HiveField(9) String? meta,
  });
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(
    _$ChatMessageModelImpl _value,
    $Res Function(_$ChatMessageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderId = null,
    Object? receiverId = null,
    Object? content = null,
    Object? status = null,
    Object? createdAt = null,
    Object? deliveredAt = freezed,
    Object? readAt = freezed,
    Object? contentType = null,
    Object? meta = freezed,
  }) {
    return _then(
      _$ChatMessageModelImpl(
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
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveredAt:
            freezed == deliveredAt
                ? _value.deliveredAt
                : deliveredAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        readAt:
            freezed == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        contentType:
            null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$ChatMessageModelImpl implements _ChatMessageModel {
  _$ChatMessageModelImpl({
    @HiveField(0) required this.id,
    @HiveField(1) required this.senderId,
    @HiveField(2) required this.receiverId,
    @HiveField(3) required this.content,
    @HiveField(4) this.status = 'pending',
    @HiveField(5) required this.createdAt,
    @HiveField(6) this.deliveredAt,
    @HiveField(7) this.readAt,
    @HiveField(8) required this.contentType,
    @HiveField(9) this.meta,
  });

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String senderId;
  @override
  @HiveField(2)
  final String receiverId;
  @override
  @HiveField(3)
  final String content;
  @override
  @JsonKey()
  @HiveField(4)
  final String status;
  @override
  @HiveField(5)
  final String createdAt;
  @override
  @HiveField(6)
  final String? deliveredAt;
  @override
  @HiveField(7)
  final String? readAt;
  @override
  @HiveField(8)
  final String contentType;
  @override
  @HiveField(9)
  final String? meta;

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, senderId: $senderId, receiverId: $receiverId, content: $content, status: $status, createdAt: $createdAt, deliveredAt: $deliveredAt, readAt: $readAt, contentType: $contentType, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
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

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(this);
  }
}

abstract class _ChatMessageModel implements ChatMessageModel {
  factory _ChatMessageModel({
    @HiveField(0) required final String id,
    @HiveField(1) required final String senderId,
    @HiveField(2) required final String receiverId,
    @HiveField(3) required final String content,
    @HiveField(4) final String status,
    @HiveField(5) required final String createdAt,
    @HiveField(6) final String? deliveredAt,
    @HiveField(7) final String? readAt,
    @HiveField(8) required final String contentType,
    @HiveField(9) final String? meta,
  }) = _$ChatMessageModelImpl;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get senderId;
  @override
  @HiveField(2)
  String get receiverId;
  @override
  @HiveField(3)
  String get content;
  @override
  @HiveField(4)
  String get status;
  @override
  @HiveField(5)
  String get createdAt;
  @override
  @HiveField(6)
  String? get deliveredAt;
  @override
  @HiveField(7)
  String? get readAt;
  @override
  @HiveField(8)
  String get contentType;
  @override
  @HiveField(9)
  String? get meta;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
