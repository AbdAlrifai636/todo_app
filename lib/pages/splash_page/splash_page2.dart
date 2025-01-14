import 'package:flutter/material.dart';
import 'package:todo/pages/on_boarding_page/on_boarding_page.dart';

class SplashPage2 extends StatefulWidget {
  const SplashPage2({super.key});

  @override
  State<SplashPage2> createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!mounted) return;
        //*************************************************** this from stackoverflow site(animation with navigation)
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingPage(),
          ),
        );
      },
    );
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xffBACED7),
              Color(0xff828C91),
              Color(0xff5A5C5D),
              Color(0xff4D4D4D)
            ])),
      ),
    );
  }
}
