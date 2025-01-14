import 'package:flutter/material.dart';
import 'package:todo/pages/home_page/home_page.dart';
import 'package:todo/widget/custom_text.dart';

class TaskBox extends StatefulWidget {
  TaskBox({
    super.key,
    this.title,
    this.subTitle,
    this.progress,
    required this.color,
     this.onTap,
  });
  final Color color;
  final String? title;
  final String? subTitle;
  final double? progress;
  final void Function()? onTap;

  @override
  State<TaskBox> createState() => _TaskBoxState();
}

class _TaskBoxState extends State<TaskBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: widget.onTap,
        child: Container(
          width: 142,
          height: 120,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget.color==Colors.white ? CustomText(
                text: widget.title ?? "No Title",
                size: 22,
                font: FontWeight.w700,
              ) : CustomText(
                text: widget.title ?? "No Title",
                size: 34,
                font: FontWeight.w700,
                color: Color(0xff8BA8B5),
              ),
          CustomText(
                text: widget.subTitle ?? "No Subtitle",
                size: 10.5,
                color: const Color(0xff999999),
                font: FontWeight.w300,
              ),
          widget.color==Colors.white ?   _slider(widget.progress??0.0):SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}


_slider(double progress) {
  return SizedBox(
    child: SliderTheme(
      data: const SliderThemeData(
          trackHeight: 5,
          thumbColor: Colors.transparent,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),
      child: Slider(
        secondaryActiveColor: const Color(0xff8BA8B5),
        secondaryTrackValue: progress,
        thumbColor: Colors.transparent,
        min: 0,
        max: 100,
        value: 0.0,
        onChanged: (v) {},
      ),
    ),
  );
}