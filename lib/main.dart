import 'package:flutter/material.dart';
import 'package:todo/pages/splash_screen.dart';
import 'package:todo/pages/splash_screen2.dart';

void main() {
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}