import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/chat_status.dart';
import 'package:jastipin_yuk/features/chat/domain/enums/content_type_chat.dart';

part 'chat_contact_info_data.freezed.dart';
part 'chat_contact_info_data.g.dart';

@freezed
class ChatContactInfoData with _$ChatContactInfoData {
  const factory ChatContactInfoData({
    required String userId,
    required ContentTypeChat contentType,
    required String content,
    @Default(0) int unreadCount,
    @Default(ChatStatus.pending) ChatStatus status,
  }) = _ChatContactInfoData;

  factory ChatContactInfoData.fromJson(Map<String, dynamic> json) =>
      _$ChatContactInfoDataFromJson(json);
}
