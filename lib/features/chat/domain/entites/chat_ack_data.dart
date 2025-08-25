import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_message_event.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/chat_status.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/content_type_chat.dart';

part 'chat_ack_data.freezed.dart';
part 'chat_ack_data.g.dart';

@freezed
class ChatAckData with _$ChatAckData implements ChatMessageEvent {
  const factory ChatAckData({
    required ContentTypeChat contentType,
    required String refferenceId,
    required ChatStatus status,
    required String receiverId,
    required String id,
    String? meta,
  }) = _ChatAckData;

  factory ChatAckData.fromJson(Map<String, dynamic> json) =>
      _$ChatAckDataFromJson(json);
}
