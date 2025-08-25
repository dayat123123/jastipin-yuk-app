// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageModelImpl(
  id: json['id'] as String,
  senderId: json['senderId'] as String,
  receiverId: json['receiverId'] as String,
  content: json['content'] as String,
  status: json['status'] as String? ?? 'pending',
  createdAt: json['createdAt'] as String,
  deliveredAt: json['deliveredAt'] as String?,
  readAt: json['readAt'] as String?,
  contentType: json['contentType'] as String,
  meta: json['meta'] as String?,
);

Map<String, dynamic> _$$ChatMessageModelImplToJson(
  _$ChatMessageModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'senderId': instance.senderId,
  'receiverId': instance.receiverId,
  'content': instance.content,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'deliveredAt': instance.deliveredAt,
  'readAt': instance.readAt,
  'contentType': instance.contentType,
  'meta': instance.meta,
};
