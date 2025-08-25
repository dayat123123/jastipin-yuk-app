import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_message_event.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.receivedChat({required ChatMessageEvent msg}) =
      ChatEventReceivedChat;
  const factory ChatEvent.startListeningChat() = ChatEventStartListeningChat;
  const factory ChatEvent.stopListeningChat() = ChatEventStopListeningChat;
}
