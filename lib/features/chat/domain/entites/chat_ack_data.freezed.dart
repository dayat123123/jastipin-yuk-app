// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_ack_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatAckData _$ChatAckDataFromJson(Map<String, dynamic> json) {
  return _ChatAckData.fromJson(json);
}

/// @nodoc
mixin _$ChatAckData {
  ContentTypeChat get contentType => throw _privateConstructorUsedError;
  String get refferenceId => throw _privateConstructorUsedError;
  ChatStatus get status => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get meta => throw _privateConstructorUsedError;

  /// Serializes this ChatAckData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatAckData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatAckDataCopyWith<ChatAckData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAckDataCopyWith<$Res> {
  factory $ChatAckDataCopyWith(
    ChatAckData value,
    $Res Function(ChatAckData) then,
  ) = _$ChatAckDataCopyWithImpl<$Res, ChatAckData>;
  @useResult
  $Res call({
    ContentTypeChat contentType,
    String refferenceId,
    ChatStatus status,
    String receiverId,
    String id,
    String? meta,
  });
}

/// @nodoc
class _$ChatAckDataCopyWithImpl<$Res, $Val extends ChatAckData>
    implements $ChatAckDataCopyWith<$Res> {
  _$ChatAckDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatAckData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? refferenceId = null,
    Object? status = null,
    Object? receiverId = null,
    Object? id = null,
    Object? meta = freezed,
  }) {
    return _then(
      _value.copyWith(
            contentType:
                null == contentType
                    ? _value.contentType
                    : contentType // ignore: cast_nullable_to_non_nullable
                        as ContentTypeChat,
            refferenceId:
                null == refferenceId
                    ? _value.refferenceId
                    : refferenceId // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as ChatStatus,
            receiverId:
                null == receiverId
                    ? _value.receiverId
                    : receiverId // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ChatAckDataImplCopyWith<$Res>
    implements $ChatAckDataCopyWith<$Res> {
  factory _$$ChatAckDataImplCopyWith(
    _$ChatAckDataImpl value,
    $Res Function(_$ChatAckDataImpl) then,
  ) = __$$ChatAckDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ContentTypeChat contentType,
    String refferenceId,
    ChatStatus status,
    String receiverId,
    String id,
    String? meta,
  });
}

/// @nodoc
class __$$ChatAckDataImplCopyWithImpl<$Res>
    extends _$ChatAckDataCopyWithImpl<$Res, _$ChatAckDataImpl>
    implements _$$ChatAckDataImplCopyWith<$Res> {
  __$$ChatAckDataImplCopyWithImpl(
    _$ChatAckDataImpl _value,
    $Res Function(_$ChatAckDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatAckData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? refferenceId = null,
    Object? status = null,
    Object? receiverId = null,
    Object? id = null,
    Object? meta = freezed,
  }) {
    return _then(
      _$ChatAckDataImpl(
        contentType:
            null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as ContentTypeChat,
        refferenceId:
            null == refferenceId
                ? _value.refferenceId
                : refferenceId // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as ChatStatus,
        receiverId:
            null == receiverId
                ? _value.receiverId
                : receiverId // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
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
class _$ChatAckDataImpl implements _ChatAckData {
  const _$ChatAckDataImpl({
    required this.contentType,
    required this.refferenceId,
    required this.status,
    required this.receiverId,
    required this.id,
    this.meta,
  });

  factory _$ChatAckDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatAckDataImplFromJson(json);

  @override
  final ContentTypeChat contentType;
  @override
  final String refferenceId;
  @override
  final ChatStatus status;
  @override
  final String receiverId;
  @override
  final String id;
  @override
  final String? meta;

  @override
  String toString() {
    return 'ChatAckData(contentType: $contentType, refferenceId: $refferenceId, status: $status, receiverId: $receiverId, id: $id, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatAckDataImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.refferenceId, refferenceId) ||
                other.refferenceId == refferenceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    contentType,
    refferenceId,
    status,
    receiverId,
    id,
    meta,
  );

  /// Create a copy of ChatAckData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatAckDataImplCopyWith<_$ChatAckDataImpl> get copyWith =>
      __$$ChatAckDataImplCopyWithImpl<_$ChatAckDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatAckDataImplToJson(this);
  }
}

abstract class _ChatAckData implements ChatAckData {
  const factory _ChatAckData({
    required final ContentTypeChat contentType,
    required final String refferenceId,
    required final ChatStatus status,
    required final String receiverId,
    required final String id,
    final String? meta,
  }) = _$ChatAckDataImpl;

  factory _ChatAckData.fromJson(Map<String, dynamic> json) =
      _$ChatAckDataImpl.fromJson;

  @override
  ContentTypeChat get contentType;
  @override
  String get refferenceId;
  @override
  ChatStatus get status;
  @override
  String get receiverId;
  @override
  String get id;
  @override
  String? get meta;

  /// Create a copy of ChatAckData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatAckDataImplCopyWith<_$ChatAckDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
