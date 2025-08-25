// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_ack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatAckModel _$ChatAckModelFromJson(Map<String, dynamic> json) {
  return _ChatAckModel.fromJson(json);
}

/// @nodoc
mixin _$ChatAckModel {
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "refId")
  String get refferenceId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get receiverId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get meta => throw _privateConstructorUsedError;

  /// Serializes this ChatAckModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatAckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatAckModelCopyWith<ChatAckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAckModelCopyWith<$Res> {
  factory $ChatAckModelCopyWith(
    ChatAckModel value,
    $Res Function(ChatAckModel) then,
  ) = _$ChatAckModelCopyWithImpl<$Res, ChatAckModel>;
  @useResult
  $Res call({
    String contentType,
    @JsonKey(name: "refId") String refferenceId,
    String status,
    String receiverId,
    String id,
    String? meta,
  });
}

/// @nodoc
class _$ChatAckModelCopyWithImpl<$Res, $Val extends ChatAckModel>
    implements $ChatAckModelCopyWith<$Res> {
  _$ChatAckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatAckModel
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
                        as String,
            refferenceId:
                null == refferenceId
                    ? _value.refferenceId
                    : refferenceId // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
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
abstract class _$$ChatAckModelImplCopyWith<$Res>
    implements $ChatAckModelCopyWith<$Res> {
  factory _$$ChatAckModelImplCopyWith(
    _$ChatAckModelImpl value,
    $Res Function(_$ChatAckModelImpl) then,
  ) = __$$ChatAckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String contentType,
    @JsonKey(name: "refId") String refferenceId,
    String status,
    String receiverId,
    String id,
    String? meta,
  });
}

/// @nodoc
class __$$ChatAckModelImplCopyWithImpl<$Res>
    extends _$ChatAckModelCopyWithImpl<$Res, _$ChatAckModelImpl>
    implements _$$ChatAckModelImplCopyWith<$Res> {
  __$$ChatAckModelImplCopyWithImpl(
    _$ChatAckModelImpl _value,
    $Res Function(_$ChatAckModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatAckModel
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
      _$ChatAckModelImpl(
        contentType:
            null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as String,
        refferenceId:
            null == refferenceId
                ? _value.refferenceId
                : refferenceId // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$ChatAckModelImpl implements _ChatAckModel {
  const _$ChatAckModelImpl({
    required this.contentType,
    @JsonKey(name: "refId") required this.refferenceId,
    required this.status,
    required this.receiverId,
    required this.id,
    this.meta,
  });

  factory _$ChatAckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatAckModelImplFromJson(json);

  @override
  final String contentType;
  @override
  @JsonKey(name: "refId")
  final String refferenceId;
  @override
  final String status;
  @override
  final String receiverId;
  @override
  final String id;
  @override
  final String? meta;

  @override
  String toString() {
    return 'ChatAckModel(contentType: $contentType, refferenceId: $refferenceId, status: $status, receiverId: $receiverId, id: $id, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatAckModelImpl &&
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

  /// Create a copy of ChatAckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatAckModelImplCopyWith<_$ChatAckModelImpl> get copyWith =>
      __$$ChatAckModelImplCopyWithImpl<_$ChatAckModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatAckModelImplToJson(this);
  }
}

abstract class _ChatAckModel implements ChatAckModel {
  const factory _ChatAckModel({
    required final String contentType,
    @JsonKey(name: "refId") required final String refferenceId,
    required final String status,
    required final String receiverId,
    required final String id,
    final String? meta,
  }) = _$ChatAckModelImpl;

  factory _ChatAckModel.fromJson(Map<String, dynamic> json) =
      _$ChatAckModelImpl.fromJson;

  @override
  String get contentType;
  @override
  @JsonKey(name: "refId")
  String get refferenceId;
  @override
  String get status;
  @override
  String get receiverId;
  @override
  String get id;
  @override
  String? get meta;

  /// Create a copy of ChatAckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatAckModelImplCopyWith<_$ChatAckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
