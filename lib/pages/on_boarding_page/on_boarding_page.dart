import 'package:flutter/material.dart';
import 'package:on_boarding/on_boarding.dart';
import 'package:todo/data/on_boarding_data.dart';
import 'package:todo/pages/home_page/home_page.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController controller = PageController();
  List<OnBoardingData> list = OnBoardingData.onBoardingData;

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    controller.addListener(() {
      setState(() {
        currentIndex = controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomOnBoarding(
      lengthPages: list.length,
      controller: controller,
      contentTitle: list[currentIndex].title,
      contentSubTitle: list[currentIndex].subTitle,
      buttonText: list[currentIndex].buttonText,
      onBoardingImage: AssetImage(list[currentIndex].image),
      skipOnTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage()));
      },
      onTapButton: () {
        controller.nextPage(
            duration: Duration(seconds: 1), curve: Curves.easeIn);
        setState(() {});
        if (currentIndex== list.length+1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()));
        }
      },
    );
  }
}
