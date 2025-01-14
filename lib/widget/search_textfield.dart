import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
   SearchTextField({super.key,required this.controller});
TextEditingController controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 60,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: FaIcon(FontAwesomeIcons.search),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 0,
                minHeight: 25,
              ),
              hintText: "search",
              hintStyle:
              const TextStyle(fontWeight: FontWeight.w300, fontSize: 24)),
        ),
      ),
    );
  }
}
