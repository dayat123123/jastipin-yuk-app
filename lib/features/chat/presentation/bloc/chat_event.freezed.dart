// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessageEvent msg) receivedChat,
    required TResult Function() startListeningChat,
    required TResult Function() stopListeningChat,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageEvent msg)? receivedChat,
    TResult? Function()? startListeningChat,
    TResult? Function()? stopListeningChat,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessageEvent msg)? receivedChat,
    TResult Function()? startListeningChat,
    TResult Function()? stopListeningChat,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventReceivedChat value) receivedChat,
    required TResult Function(ChatEventStartListeningChat value)
    startListeningChat,
    required TResult Function(ChatEventStopListeningChat value)
    stopListeningChat,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventReceivedChat value)? receivedChat,
    TResult? Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult? Function(ChatEventStopListeningChat value)? stopListeningChat,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventReceivedChat value)? receivedChat,
    TResult Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult Function(ChatEventStopListeningChat value)? stopListeningChat,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatEventReceivedChatImplCopyWith<$Res> {
  factory _$$ChatEventReceivedChatImplCopyWith(
    _$ChatEventReceivedChatImpl value,
    $Res Function(_$ChatEventReceivedChatImpl) then,
  ) = __$$ChatEventReceivedChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageEvent msg});
}

/// @nodoc
class __$$ChatEventReceivedChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventReceivedChatImpl>
    implements _$$ChatEventReceivedChatImplCopyWith<$Res> {
  __$$ChatEventReceivedChatImplCopyWithImpl(
    _$ChatEventReceivedChatImpl _value,
    $Res Function(_$ChatEventReceivedChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? msg = null}) {
    return _then(
      _$ChatEventReceivedChatImpl(
        msg:
            null == msg
                ? _value.msg
                : msg // ignore: cast_nullable_to_non_nullable
                    as ChatMessageEvent,
      ),
    );
  }
}

/// @nodoc

class _$ChatEventReceivedChatImpl implements ChatEventReceivedChat {
  const _$ChatEventReceivedChatImpl({required this.msg});

  @override
  final ChatMessageEvent msg;

  @override
  String toString() {
    return 'ChatEvent.receivedChat(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventReceivedChatImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEventReceivedChatImplCopyWith<_$ChatEventReceivedChatImpl>
  get copyWith =>
      __$$ChatEventReceivedChatImplCopyWithImpl<_$ChatEventReceivedChatImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessageEvent msg) receivedChat,
    required TResult Function() startListeningChat,
    required TResult Function() stopListeningChat,
  }) {
    return receivedChat(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageEvent msg)? receivedChat,
    TResult? Function()? startListeningChat,
    TResult? Function()? stopListeningChat,
  }) {
    return receivedChat?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessageEvent msg)? receivedChat,
    TResult Function()? startListeningChat,
    TResult Function()? stopListeningChat,
    required TResult orElse(),
  }) {
    if (receivedChat != null) {
      return receivedChat(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventReceivedChat value) receivedChat,
    required TResult Function(ChatEventStartListeningChat value)
    startListeningChat,
    required TResult Function(ChatEventStopListeningChat value)
    stopListeningChat,
  }) {
    return receivedChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventReceivedChat value)? receivedChat,
    TResult? Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult? Function(ChatEventStopListeningChat value)? stopListeningChat,
  }) {
    return receivedChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventReceivedChat value)? receivedChat,
    TResult Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult Function(ChatEventStopListeningChat value)? stopListeningChat,
    required TResult orElse(),
  }) {
    if (receivedChat != null) {
      return receivedChat(this);
    }
    return orElse();
  }
}

abstract class ChatEventReceivedChat implements ChatEvent {
  const factory ChatEventReceivedChat({required final ChatMessageEvent msg}) =
      _$ChatEventReceivedChatImpl;

  ChatMessageEvent get msg;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatEventReceivedChatImplCopyWith<_$ChatEventReceivedChatImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatEventStartListeningChatImplCopyWith<$Res> {
  factory _$$ChatEventStartListeningChatImplCopyWith(
    _$ChatEventStartListeningChatImpl value,
    $Res Function(_$ChatEventStartListeningChatImpl) then,
  ) = __$$ChatEventStartListeningChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatEventStartListeningChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventStartListeningChatImpl>
    implements _$$ChatEventStartListeningChatImplCopyWith<$Res> {
  __$$ChatEventStartListeningChatImplCopyWithImpl(
    _$ChatEventStartListeningChatImpl _value,
    $Res Function(_$ChatEventStartListeningChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatEventStartListeningChatImpl implements ChatEventStartListeningChat {
  const _$ChatEventStartListeningChatImpl();

  @override
  String toString() {
    return 'ChatEvent.startListeningChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventStartListeningChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessageEvent msg) receivedChat,
    required TResult Function() startListeningChat,
    required TResult Function() stopListeningChat,
  }) {
    return startListeningChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageEvent msg)? receivedChat,
    TResult? Function()? startListeningChat,
    TResult? Function()? stopListeningChat,
  }) {
    return startListeningChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessageEvent msg)? receivedChat,
    TResult Function()? startListeningChat,
    TResult Function()? stopListeningChat,
    required TResult orElse(),
  }) {
    if (startListeningChat != null) {
      return startListeningChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventReceivedChat value) receivedChat,
    required TResult Function(ChatEventStartListeningChat value)
    startListeningChat,
    required TResult Function(ChatEventStopListeningChat value)
    stopListeningChat,
  }) {
    return startListeningChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventReceivedChat value)? receivedChat,
    TResult? Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult? Function(ChatEventStopListeningChat value)? stopListeningChat,
  }) {
    return startListeningChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventReceivedChat value)? receivedChat,
    TResult Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult Function(ChatEventStopListeningChat value)? stopListeningChat,
    required TResult orElse(),
  }) {
    if (startListeningChat != null) {
      return startListeningChat(this);
    }
    return orElse();
  }
}

abstract class ChatEventStartListeningChat implements ChatEvent {
  const factory ChatEventStartListeningChat() =
      _$ChatEventStartListeningChatImpl;
}

/// @nodoc
abstract class _$$ChatEventStopListeningChatImplCopyWith<$Res> {
  factory _$$ChatEventStopListeningChatImplCopyWith(
    _$ChatEventStopListeningChatImpl value,
    $Res Function(_$ChatEventStopListeningChatImpl) then,
  ) = __$$ChatEventStopListeningChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatEventStopListeningChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChatEventStopListeningChatImpl>
    implements _$$ChatEventStopListeningChatImplCopyWith<$Res> {
  __$$ChatEventStopListeningChatImplCopyWithImpl(
    _$ChatEventStopListeningChatImpl _value,
    $Res Function(_$ChatEventStopListeningChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatEventStopListeningChatImpl implements ChatEventStopListeningChat {
  const _$ChatEventStopListeningChatImpl();

  @override
  String toString() {
    return 'ChatEvent.stopListeningChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEventStopListeningChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatMessageEvent msg) receivedChat,
    required TResult Function() startListeningChat,
    required TResult Function() stopListeningChat,
  }) {
    return stopListeningChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageEvent msg)? receivedChat,
    TResult? Function()? startListeningChat,
    TResult? Function()? stopListeningChat,
  }) {
    return stopListeningChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatMessageEvent msg)? receivedChat,
    TResult Function()? startListeningChat,
    TResult Function()? stopListeningChat,
    required TResult orElse(),
  }) {
    if (stopListeningChat != null) {
      return stopListeningChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatEventReceivedChat value) receivedChat,
    required TResult Function(ChatEventStartListeningChat value)
    startListeningChat,
    required TResult Function(ChatEventStopListeningChat value)
    stopListeningChat,
  }) {
    return stopListeningChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatEventReceivedChat value)? receivedChat,
    TResult? Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult? Function(ChatEventStopListeningChat value)? stopListeningChat,
  }) {
    return stopListeningChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatEventReceivedChat value)? receivedChat,
    TResult Function(ChatEventStartListeningChat value)? startListeningChat,
    TResult Function(ChatEventStopListeningChat value)? stopListeningChat,
    required TResult orElse(),
  }) {
    if (stopListeningChat != null) {
      return stopListeningChat(this);
    }
    return orElse();
  }
}

abstract class ChatEventStopListeningChat implements ChatEvent {
  const factory ChatEventStopListeningChat() = _$ChatEventStopListeningChatImpl;
}
