import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFloatingActionButton extends StatelessWidget {
   CustomFloatingActionButton({super.key,required this.onPressed});
   void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      backgroundColor: const Color(0xffF9F9F9),
      onPressed: onPressed,
      shape: const CircleBorder(
        side: BorderSide(color: Color(0xff7F99A5), width: 4),
      ),
      child: const Icon(
        FontAwesomeIcons.add,
        color: Color(0xff7F99A5),
      ),
    );
  }
}
