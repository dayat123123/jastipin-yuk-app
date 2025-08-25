import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_message_event.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/chat_status.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/content_type_chat.dart';

part 'chat_message_data.freezed.dart';
part 'chat_message_data.g.dart';

@freezed
class ChatMessageData with _$ChatMessageData implements ChatMessageEvent {
  const factory ChatMessageData({
    required String id,
    required String senderId,
    required String receiverId,
    required String content,
    required ChatStatus status,
    DateTime? createdAt,
    DateTime? deliveredAt,
    DateTime? readAt,
    required ContentTypeChat contentType,
    String? meta,
  }) = _ChatMessageData;

  factory ChatMessageData.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDataFromJson(json);
}
