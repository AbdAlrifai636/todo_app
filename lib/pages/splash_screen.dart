import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/pages/splash_screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 1;
  double opacity2 = 0;
  double topPen = 375;
  double leftPen = 260;
  animation() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        if (!mounted) return;
        setState(() {
          leftPen = 170;
          opacity = 0;
        });

        Future.delayed(
          const Duration(seconds: 3),
          () {
            if (!mounted) return;
            setState(() {
              opacity2 = 1;
              topPen = 310;
            });
          },
        );
      },
    );

    await Future.delayed(
      const Duration(seconds: 8),
      () {
        if (!mounted) return;
        //*************************************************** this from stackoverflow site(animation with navigation)
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const SplashScreen2(),
            transitionDuration: const Duration(seconds: 2),
            transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    animation();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 4),
            top: 350,
            left: 70,
            child: AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 200,
                height: 66,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img.png")),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 2),
            top: 350,
            left: 85,
            child: AnimatedOpacity(
              opacity: opacity2,
              duration: const Duration(seconds: 2),
              child: Container(
                width: 200,
                height: 66,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img2.png")),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
              duration: const Duration(seconds: 2),
              top: topPen,
              left: leftPen,
              child: const RotationTransition(
                  turns: AlwaysStoppedAnimation(100 / 360),
                  child: FaIcon(
                    FontAwesomeIcons.pencil,
                    size: 35,
                  ))),
        ],
      ),
    );
  }
}
