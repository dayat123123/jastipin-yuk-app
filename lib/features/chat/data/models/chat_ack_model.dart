import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_message_event_model.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_ack_data.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/chat_status.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/content_type_chat.dart';

part 'chat_ack_model.freezed.dart';
part 'chat_ack_model.g.dart';

@freezed
class ChatAckModel with _$ChatAckModel implements ChatMessageEventModel {
  const factory ChatAckModel({
    required String contentType,
    @JsonKey(name: "refId") required String refferenceId,
    required String status,
    required String receiverId,
    required String id,
    String? meta,
  }) = _ChatAckModel;

  factory ChatAckModel.fromJson(Map<String, dynamic> json) =>
      _$ChatAckModelFromJson(json);
}

extension ChatAckModelMapper on ChatAckModel {
  ChatAckData toEntity() {
    return ChatAckData(
      contentType: ContentTypeChatX.fromString(contentType),
      refferenceId: refferenceId,
      status: ChatStatusX.fromString(status),
      id: id,
      meta: meta,
      receiverId: receiverId,
    );
  }
}
