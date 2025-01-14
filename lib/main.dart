import 'package:flutter/material.dart';
import 'package:todo/pages/home_page/home_page.dart';
import 'package:todo/pages/on_boarding_page/on_boarding_page.dart';
import 'package:todo/pages/splash_page/splash_page.dart';
import 'package:todo/pages/splash_page/splash_page2.dart';

void main() {
  runApp(  MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({super.key});
PageController controller= PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OnBoardingPage()
    );
  }
}
