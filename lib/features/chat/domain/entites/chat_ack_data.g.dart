// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_ack_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatAckDataImpl _$$ChatAckDataImplFromJson(Map<String, dynamic> json) =>
    _$ChatAckDataImpl(
      contentType: $enumDecode(_$ContentTypeChatEnumMap, json['contentType']),
      refferenceId: json['refferenceId'] as String,
      status: $enumDecode(_$ChatStatusEnumMap, json['status']),
      receiverId: json['receiverId'] as String,
      id: json['id'] as String,
      meta: json['meta'] as String?,
    );

Map<String, dynamic> _$$ChatAckDataImplToJson(_$ChatAckDataImpl instance) =>
    <String, dynamic>{
      'contentType': _$ContentTypeChatEnumMap[instance.contentType]!,
      'refferenceId': instance.refferenceId,
      'status': _$ChatStatusEnumMap[instance.status]!,
      'receiverId': instance.receiverId,
      'id': instance.id,
      'meta': instance.meta,
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
