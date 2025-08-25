import 'dart:async';
import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/features/chat/data/data_source/chat_local_data_source.dart';
import 'package:jastipin_yuk/features/chat/data/data_source/chat_network_data_source.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_message_model.dart';
import 'package:jastipin_yuk/features/chat/data/models/chat_ack_model.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_contact_info_data.dart';
import 'package:jastipin_yuk/features/chat/domain/entites/chat_message_event.dart';
import 'package:jastipin_yuk/features/chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatNetworkDataSource _networkDataSource;
  final ChatLocalDataSource _localDataSource;
  final Map<String, ChatContactInfoData> contacts = {};
  StreamSubscription<ChatMessageEvent>? _chatSubscription;

  ChatRepositoryImpl(this._networkDataSource, this._localDataSource);

  @override
  Future<Result<void>> startListeningChatEvent() async {
    _chatSubscription?.cancel();
    _chatSubscription = _networkDataSource
        .subscribeToChat()
        .map((event) {
          if (event is ChatAckModel) {
            final ack = event.toEntity();
            return ack;
          } else if (event is ChatMessageModel) {
            final chat = event.toEntity();
            return chat;
          }
          throw Exception("Unknown chat event type: $event");
        })
        .listen((chatEvent) {});
    return Result.success(null);
  }

  @override
  Future<Result<void>> stopListeningChatEvent() async {
    _chatSubscription?.cancel();
    _networkDataSource.unsubscribeChat();
    return Result.success(null);
  }
}
