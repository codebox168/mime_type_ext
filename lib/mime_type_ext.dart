library mime_type_ext;

import 'mime_type_ext_db.dart';

class MimeTypeExt {
  static MimeTypeExt? _mimeTypeExt;
  MimeTypeExt._();

  static MimeTypeExt get instance {
    _mimeTypeExt ??= MimeTypeExt._();
    return _mimeTypeExt!;
  }

  String mimeTypeToExtention(String mimeType) {
    for (Map<String, String> mimeTypeExtDataItem in mimeTypeExtData) {
      if (mimeType.contains(mimeTypeExtDataItem["meme_type"]!)) {
        return mimeTypeExtDataItem["extension"]!;
      }
    }
    return "";
  }

  String extentionToMimeType(String ext) {
    for (Map<String, String> mimeTypeExtDataItem in mimeTypeExtData) {
      if (mimeTypeExtDataItem["extension"] == ext) {
        return mimeTypeExtDataItem["meme_type"]!;
      }
    }
    return "";
  }
}
