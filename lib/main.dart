import 'package:flutter/material.dart';
import 'package:hngmobilestage1/pages/splash.dart';
import 'package:hngmobilestage1/pages/webview-container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Splash(),
      routes: {
        '/webViewContainer': (context) => const WebViewContainer(),
      },
    );
  }
}
