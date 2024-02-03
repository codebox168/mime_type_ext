/// Dart packages that make it easy to convert MimeType to Extension and convert Extension to MimeType.
///
/// Get started at [mime_type_extension](https://pub.dev/packages/mime_type_extension) 🚀
library mime_type_extension;

import 'mime_type_ext_db.dart';

class MimeTypeExtension {
  static MimeTypeExtension? _mimeTypeExt;
  MimeTypeExtension._();

  /// [instance]
  ///
  /// MimeTypeExtension implement using Singleton pattern,so This instance property is the instance of MimeTypeExtension
  ///
  static MimeTypeExtension get instance {
    _mimeTypeExt ??= MimeTypeExtension._();
    return _mimeTypeExt!;
  }

  /// [mimeTypeToExtension]
  ///
  /// Call this method when ever you want to  convert mimeType to extension
  ///
  /// ```
  ///  MimeTypeExtension.instance.mimeTypeToExtension('application/json');
  /// ```
  ///
  String mimeTypeToExtension(String mimeType) {
    for (Map<String, String> mimeTypeExtDataItem in mimeTypeExtData) {
      if (mimeType.toLowerCase().contains(mimeTypeExtDataItem["meme_type"]!)) {
        return mimeTypeExtDataItem["extension"]!;
      }
    }
    return "";
  }

  /// [extensionToMimeType]
  ///
  /// Call this method when ever you want to convert extension to mimeType
  ///
  /// ```
  ///  MimeTypeExtension.instance.extensionToMimeType('.mp4');
  /// ```
  ///
  String extensionToMimeType(String ext) {
    for (Map<String, String> mimeTypeExtDataItem in mimeTypeExtData) {
      if (mimeTypeExtDataItem["extension"] == ext.toLowerCase()) {
        return mimeTypeExtDataItem["meme_type"]!;
      }
    }
    return "";
  }
}
