![Pub Points](https://img.shields.io/pub/points/mime_type_extension) ![Static Badge](https://img.shields.io/badge/Dart_Analyze-Pass-blue) ![Static Badge](https://img.shields.io/badge/License-MIT-purple?link=https%3A%2F%2Fgithub.com%2Fcodebox168%2Fmime_type_ext%2Fblob%2Fmain%2FLICENSE)

## Features

* Convert mime_type to extension 
* Convert extension to mime_type.
#### Support `600+` extensions and mime_types.


## Getting started

Import `mime_type_extension` package.

```dart
import 'package:mime_type_extension/mime_type_extension.dart';
```

## Usage

#### Convert mime_type to extension

```dart
String mimeType = 'application/json';
final ext = MimeTypeExtension.instance.mimeTypeToExtension(mimeType);
print(ext); // ".json"
```
#### Convert extension to mime_type

```dart
String ext = '.mp4';
final mimeType = MimeTypeExtension.instance.extensionToMimeType(ext);
print(mimeType); // "video/mp4"
```

## Additional information

If you like this this package please like and give star on [Github](https://github.com/codebox168/mime_type_ext)\
If you have issue with this package please create issue on [Github](https://github.com/codebox168/mime_type_ext)\
Contact [Author](https://www.facebook.com/kememsothea)