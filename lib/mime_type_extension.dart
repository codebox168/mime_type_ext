library mime_type_extension;

import 'mime_type_ext_db.dart';

class MimeTypeExtension {
  static MimeTypeExtension? _mimeTypeExt;
  MimeTypeExtension._();

  static MimeTypeExtension get instance {
    _mimeTypeExt ??= MimeTypeExtension._();
    return _mimeTypeExt!;
  }

  String mimeTypeToExtension(String mimeType) {
    for (Map<String, String> mimeTypeExtDataItem in mimeTypeExtData) {
      if (mimeType.toLowerCase().contains(mimeTypeExtDataItem["meme_type"]!)) {
        return mimeTypeExtDataItem["extension"]!;
      }
    }
    return "";
  }

  String extensionToMimeType(String ext) {
    for (Map<String, String> mimeTypeExtDataItem in mimeTypeExtData) {
      if (mimeTypeExtDataItem["extension"] == ext.toLowerCase()) {
        return mimeTypeExtDataItem["meme_type"]!;
      }
    }
    return "";
  }
}
