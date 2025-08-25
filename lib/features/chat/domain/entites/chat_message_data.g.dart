// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageDataImpl _$$ChatMessageDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageDataImpl(
  id: json['id'] as String,
  senderId: json['senderId'] as String,
  receiverId: json['receiverId'] as String,
  content: json['content'] as String,
  status: $enumDecode(_$ChatStatusEnumMap, json['status']),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  deliveredAt:
      json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
  readAt:
      json['readAt'] == null ? null : DateTime.parse(json['readAt'] as String),
  contentType: $enumDecode(_$ContentTypeChatEnumMap, json['contentType']),
  meta: json['meta'] as String?,
);

Map<String, dynamic> _$$ChatMessageDataImplToJson(
  _$ChatMessageDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'senderId': instance.senderId,
  'receiverId': instance.receiverId,
  'content': instance.content,
  'status': _$ChatStatusEnumMap[instance.status]!,
  'createdAt': instance.createdAt?.toIso8601String(),
  'deliveredAt': instance.deliveredAt?.toIso8601String(),
  'readAt': instance.readAt?.toIso8601String(),
  'contentType': _$ContentTypeChatEnumMap[instance.contentType]!,
  'meta': instance.meta,
};

const _$ChatStatusEnumMap = {
  ChatStatus.pending: 'pending',
  ChatStatus.sent: 'sent',
  ChatStatus.delivered: 'delivered',
  ChatStatus.read: 'read',
};

const _$ContentTypeChatEnumMap = {
  ContentTypeChat.text: 'text',
  ContentTypeChat.file: 'file',
  ContentTypeChat.image: 'image',
};
