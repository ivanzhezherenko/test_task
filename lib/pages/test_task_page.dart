import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task/res/app_colors.dart';
import 'package:test_task/res/app_const.dart';

///Create page
class TestTaskPage extends StatefulWidget {
  ///TestTaskPage class constructor
  const TestTaskPage({Key? key}) : super(key: key);

  @override
  _TestTaskPageState createState() => _TestTaskPageState();
}

class _TestTaskPageState extends State<TestTaskPage> {
  final ValueNotifier<Color> _color = ValueNotifier(AppColors.whiteColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: _generateRandomColor,
        child: ValueListenableBuilder<Color>(
          valueListenable: _color,
          builder: (BuildContext context, Color _color, Widget? child) {
            return Container(
              color: _color,
              alignment: Alignment.center,
              child: const Text(AppConst.titleTestTaskPage),
            );
          },
        ),
      ),
    );
  }

  void _generateRandomColor() {
    _color.value = Color(
      (Random().nextDouble() * AppConst.generateColorValue).toInt() << 0,
    ).withOpacity(1.0);
  }
}
