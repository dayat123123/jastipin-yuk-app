import 'package:jastipin_yuk/core/utils/result/result.dart';
import 'package:jastipin_yuk/core/utils/result/use_case.dart';
import 'package:jastipin_yuk/features/chat/domain/repositories/chat_repository.dart';

class StopListeningChatEventUsecase implements UseCase<Result<void>, void> {
  final ChatRepository _repository;

  const StopListeningChatEventUsecase(this._repository);
  @override
  Future<Result<void>> call(void params) async {
    return await _repository.stopListeningChatEvent();
  }
}
