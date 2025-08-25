// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_ack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatAckModelImpl _$$ChatAckModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatAckModelImpl(
      contentType: json['contentType'] as String,
      refferenceId: json['refId'] as String,
      status: json['status'] as String,
      receiverId: json['receiverId'] as String,
      id: json['id'] as String,
      meta: json['meta'] as String?,
    );

Map<String, dynamic> _$$ChatAckModelImplToJson(_$ChatAckModelImpl instance) =>
    <String, dynamic>{
      'contentType': instance.contentType,
      'refId': instance.refferenceId,
      'status': instance.status,
      'receiverId': instance.receiverId,
      'id': instance.id,
      'meta': instance.meta,
    };
