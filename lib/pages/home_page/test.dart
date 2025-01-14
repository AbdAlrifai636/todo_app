/*
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:slider_explanation/slider/slide_3_page.dart';
import 'package:slider_explanation/slider/slider_2_page.dart';

class SliderExplanation extends StatefulWidget {
  const SliderExplanation({super.key});

  @override
  State<SliderExplanation> createState() => _SliderExplanationState();
}

late double currentValue ;


class _SliderExplanationState extends State<SliderExplanation> {
  @override
  void initState() {
    currentValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0.0,
              max: 100.0,
              value: currentValue,
              divisions: 5,
              label: currentValue.round().toString(),
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              thumbColor: Colors.amber,
              overlayColor: WidgetStateProperty.all(Colors.cyan),
              allowedInteraction: SliderInteraction.tapAndSlide,
              autofocus: true,
              onChangeStart: (val) {
                Future.delayed(const Duration(milliseconds: 1), () {
                  log("hello world");
                });
              },
              onChangeEnd: (v) {
                if (v >= 100) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Slide3Page();
                  }));
                }

                currentValue = 0.0;

              },
              onChanged: (value) {
                setState(() {
                  currentValue = value;
                });
              }),

        ],
      ),
    );
  }
}*/
