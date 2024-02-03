import 'package:flutter/material.dart';
import 'package:mime_type_extension/mime_type_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Example of Mime Type Extension"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'MimeType of .mp4 is ${MimeTypeExtension.instance.extensionToMimeType('.mp4')}',
              ),
              const Divider(),
              Text(
                'Extension of application/json is ${MimeTypeExtension.instance.mimeTypeToExtension('application/json')}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
