enum ContentTypeChat { text, file, image }

extension ContentTypeChatX on ContentTypeChat {
  String get label {
    switch (this) {
      case ContentTypeChat.text:
        return 'Text';
      case ContentTypeChat.file:
        return 'File';
      case ContentTypeChat.image:
        return 'Image';
    }
  }

  String get value {
    switch (this) {
      case ContentTypeChat.text:
        return 'text';
      case ContentTypeChat.file:
        return 'file';
      case ContentTypeChat.image:
        return 'image';
    }
  }

  static ContentTypeChat fromString(String value) {
    switch (value.toUpperCase()) {
      case 'TEXT':
        return ContentTypeChat.text;
      case 'FILE':
        return ContentTypeChat.file;
      case 'IMAGE':
        return ContentTypeChat.image;
      default:
        throw ArgumentError('Unknown content type chat string: $value');
    }
  }
}
