// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_contact_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatContactInfoDataImpl _$$ChatContactInfoDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatContactInfoDataImpl(
  userId: json['userId'] as String,
  contentType: $enumDecode(_$ContentTypeChatEnumMap, json['contentType']),
  content: json['content'] as String,
  unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
  status:
      $enumDecodeNullable(_$ChatStatusEnumMap, json['status']) ??
      ChatStatus.pending,
);

Map<String, dynamic> _$$ChatContactInfoDataImplToJson(
  _$ChatContactInfoDataImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'contentType': _$ContentTypeChatEnumMap[instance.contentType]!,
  'content': instance.content,
  'unreadCount': instance.unreadCount,
  'status': _$ChatStatusEnumMap[instance.status]!,
};

const _$ContentTypeChatEnumMap = {
  ContentTypeChat.text: 'text',
  ContentTypeChat.file: 'file',
  ContentTypeChat.image: 'image',
};

const _$ChatStatusEnumMap = {
  ChatStatus.pending: 'pending',
  ChatStatus.sent: 'sent',
  ChatStatus.delivered: 'delivered',
  ChatStatus.read: 'read',
};
