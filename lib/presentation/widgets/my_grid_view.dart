import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyGridView extends StatelessWidget {
  final double childAspectRatio;
  final int crossAxisCount; // Set the number of items you want in the GridView
  List<Widget> widgets;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  // ignore: use_key_in_widget_constructors
  MyGridView(
      {required this.widgets,
      this.crossAxisCount = 1,
      this.mainAxisSpacing = 1,
      this.crossAxisSpacing = 1,
      this.childAspectRatio = 1});

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();

    return GridView.count(
      controller: _controller,
      // crossAxisCount: (Platform.isMobile(context)) ? 1 : 2,
      shrinkWrap: true,
      //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
      childAspectRatio: childAspectRatio,
      padding: EdgeInsets.zero,
      children: widgets,
    );
  }
}
