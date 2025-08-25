import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_message_event_model.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_message_data.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/chat_status.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/content_type_chat.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
@HiveType(typeId: 0)
class ChatMessageModel
    with _$ChatMessageModel
    implements ChatMessageEventModel {
  factory ChatMessageModel({
    @HiveField(0) required String id,
    @HiveField(1) required String senderId,
    @HiveField(2) required String receiverId,
    @HiveField(3) required String content,
    @HiveField(4) @Default('pending') String status,
    @HiveField(5) required String createdAt,
    @HiveField(6) String? deliveredAt,
    @HiveField(7) String? readAt,
    @HiveField(8) required String contentType,
    @HiveField(9) String? meta,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

extension ChatMessageModelMapper on ChatMessageModel {
  ChatMessageData toEntity() {
    return ChatMessageData(
      id: id,
      content: content,
      contentType: ContentTypeChatX.fromString(contentType),
      receiverId: receiverId,
      senderId: senderId,
      status: ChatStatusX.fromString(status),
      createdAt: DateTime.tryParse(createdAt),
      deliveredAt: DateTime.tryParse(deliveredAt ?? ''),
      readAt: DateTime.tryParse(readAt ?? ''),
      meta: meta,
    );
  }
}
