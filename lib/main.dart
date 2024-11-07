import 'package:flutter/material.dart';
import 'package:ujian_frontend/pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My APP',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

