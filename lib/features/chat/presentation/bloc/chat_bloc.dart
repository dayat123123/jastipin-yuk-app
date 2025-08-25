import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/chat/domain/repositories/chat_repository.dart';
import 'package:jastipin_yuk/features/chat/domain/usecases/start_listening_chat_event/start_listening_chat_event_usecase.dart';
import 'package:jastipin_yuk/features/chat/domain/usecases/stop_listening_chat_event/stop_listening_chat_event_usecase.dart';
import 'chat_event.dart';
import 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final StartListeningChatEventUsecase _startListeningChatEventUsecase;
  final StopListeningChatEventUsecase _stopListeningChatEventUsecase;
  ChatBloc({required ChatRepository chatRepository})
    : _startListeningChatEventUsecase = StartListeningChatEventUsecase(
        chatRepository,
      ),
      _stopListeningChatEventUsecase = StopListeningChatEventUsecase(
        chatRepository,
      ),
      super(ChatState.initial()) {
    on<ChatEventStartListeningChat>(_onStartListeningChat);
    on<ChatEventStopListeningChat>(_onStopListeningChat);
    on<ChatEventReceivedChat>(_onReceivedChat);
  }

  void _onStartListeningChat(
    ChatEventStartListeningChat event,
    Emitter<ChatState> emit,
  ) async {
    await _startListeningChatEventUsecase.call(null);
  }

  void _onStopListeningChat(
    ChatEventStopListeningChat event,
    Emitter<ChatState> emit,
  ) async {
    await _stopListeningChatEventUsecase.call(null);
  }

  void _onReceivedChat(ChatEventReceivedChat event, Emitter<ChatState> emit) {
    print("Get data: ${event.msg}");
  }

  @override
  Future<void> close() async {
    await _stopListeningChatEventUsecase.call(null);
    return super.close();
  }
}
