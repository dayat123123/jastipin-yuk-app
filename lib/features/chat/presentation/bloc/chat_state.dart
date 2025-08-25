import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatStateInitial;
  const factory ChatState.loading() = ChatStateLoading;
  const factory ChatState.success({String? message}) = ChatStateSuccess;
  const factory ChatState.failed({required String message}) = ChatStateFailed;
}
