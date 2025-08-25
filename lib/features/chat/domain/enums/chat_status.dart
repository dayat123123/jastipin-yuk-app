enum ChatStatus { pending, sent, delivered, read }

extension ChatStatusX on ChatStatus {
  String get label {
    switch (this) {
      case ChatStatus.pending:
        return 'Pending';
      case ChatStatus.sent:
        return 'Sent';
      case ChatStatus.delivered:
        return 'Delivered';
      case ChatStatus.read:
        return 'Read';
    }
  }

  String get value {
    switch (this) {
      case ChatStatus.pending:
        return 'pending';
      case ChatStatus.sent:
        return 'sent';
      case ChatStatus.delivered:
        return 'delivered';
      case ChatStatus.read:
        return 'read';
    }
  }

  static ChatStatus fromString(String value) {
    switch (value.toUpperCase()) {
      case 'PENDING':
        return ChatStatus.pending;
      case 'SENT':
        return ChatStatus.sent;
      case 'DELIVERED':
        return ChatStatus.delivered;
      case 'READ':
        return ChatStatus.read;
      default:
        throw ArgumentError('Unknown chat status string: $value');
    }
  }
}
