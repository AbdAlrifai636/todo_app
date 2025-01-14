import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:todo/pages/home_page/home_page.dart';
import 'package:todo/widget/Custom_floating_action_button.dart';
import 'package:todo/widget/custom_container.dart';
import 'package:todo/widget/custom_text.dart';
import 'package:todo/widget/search_textfield.dart';
import 'package:todo/widget/sliver_app_bar.dart';

class TaskGroup extends StatefulWidget {
  TaskGroup({super.key});

  @override
  State<TaskGroup> createState() => _TaskGroupState();
}

class _TaskGroupState extends State<TaskGroup> {
  final TextEditingController _controller = TextEditingController();
  late bool isSelected;
  @override
  void initState() {
    isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
          CustomSliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.40,
            mainAxisExtent: 40,
            leading: Icon(Icons.arrow_back_ios),
            title: CustomText(
                text: "List",
                size: 15,
                font: FontWeight.w300,
                color: Color(0xff999999)),
            search: SearchTextField(controller: _controller),
            nameTask: TaskBox(
              color: Colors.transparent,
              title: "Home",
              subTitle: "10 task - 5 completed",
            ),
          ),
          SliverList.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Checkbox(
                      value: isSelected,
                      onChanged: (v) {
                        setState(() {

                          isSelected = v!;
                        });
                      }),
                  title: CustomText(
                    text: "Doing laundry",
                    size: 17,
                    font: FontWeight.w600,
                    color: Colors.black,
                  ),
                  subtitle: CustomText(
                    text: "some notes....",
                    size: 10.5,
                    font: FontWeight.w300,
                    color: Color(0xff999999),
                  ),
                );
              }),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {}),
    );
  }
}
