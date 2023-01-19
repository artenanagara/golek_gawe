// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'pages/splashscreen_page.dart';
import 'pages/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
      },
    );
  }
}

