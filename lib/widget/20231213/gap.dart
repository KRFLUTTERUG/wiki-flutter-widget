import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// Padding or SizedBox 대체
class MyGap extends StatelessWidget {
  const MyGap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Column(
              children: [
                Gap(5),
                ColoredRectangle(color: Colors.blue),
                Gap(5),
                ColoredRectangle(color: Colors.green),
                Gap(5),
                ColoredRectangle(color: Colors.yellow),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Gap(5),
                Expanded(
                  child: ColoredRectangle(color: Colors.blue),
                ),
                Gap(5),
                Expanded(
                  child: ColoredRectangle(color: Colors.green),
                ),
                Gap(5),
                Expanded(
                  child: ColoredRectangle(color: Colors.yellow),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                MaxGap(5),
                ColoredRectangle(color: Colors.blue),
                MaxGap(5),
                ColoredRectangle(color: Colors.green),
                MaxGap(5),
                ColoredRectangle(color: Colors.yellow),
                MaxGap(5),
                ColoredRectangle(color: Colors.blue),
                MaxGap(5),
                ColoredRectangle(color: Colors.green),
                MaxGap(5),
                ColoredRectangle(color: Colors.yellow),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColoredRectangle extends StatelessWidget {
  final Color color;

  const ColoredRectangle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: color,
    );
  }
}