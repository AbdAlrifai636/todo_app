import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomSliverAppBar extends StatelessWidget {
  CustomSliverAppBar(
      {super.key,
      this.search,
      this.leading,
      this.title,
      this.actions,
      this.nameTask,
      this.expandedHeight,
      this.mainAxisExtent, });
  Widget? search;
  Widget? leading;
  Widget? title;
  List<Widget>? actions;
  Widget? nameTask;
  double? expandedHeight;
  double? mainAxisExtent;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: actions,
      leading: leading,
      surfaceTintColor: const Color(0xffF9F9F9),
      backgroundColor: const Color(0xffF9F9F9),
      title: title,
      pinned: true,
      floating: false,
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
          background: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [Gap(mainAxisExtent!), nameTask ?? Container(), search??Container()],
      )),
    );
  }
}
