import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.text, this.size, this.font, this.color});
  String text;
  double? size;
  Color? color;
  FontWeight? font;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: font, color: color),
    );
  }
}
