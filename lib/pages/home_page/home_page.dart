import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo/pages/task_group/task_group.dart';
import 'package:todo/widget/Custom_floating_action_button.dart';
import 'package:todo/widget/custom_container.dart';
import 'package:todo/widget/custom_text.dart';
import 'package:todo/widget/search_textfield.dart';
import 'package:todo/widget/sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

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
              expandedHeight: MediaQuery.of(context).size.height * 0.35,
              mainAxisExtent: 140,
              nameTask: Container(),
              title: CustomText(text: "List", size: 34, font: FontWeight.w700),
              search: SearchTextField(controller: _controller)),
          SliverGrid.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return TaskBox(
                    title: "work",
                    subTitle: "10 task - 5 completed",
                    progress: 40,
                    color: Colors.white,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TaskGroup()));
                    });
              }),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(onPressed: () {}),
    );
  }
}
