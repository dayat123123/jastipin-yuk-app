import 'package:jastipin_yuk/core/utils/result/result.dart';

abstract class ChatRepository {
  Future<Result<void>> startListeningChatEvent();
  Future<Result<void>> stopListeningChatEvent();
}
