import 'package:flutter/material.dart';

class MyInkwell extends StatefulWidget {
  const MyInkwell({super.key});

  @override
  State<MyInkwell> createState() => _MyInkwellState();
}

class _MyInkwellState extends State<MyInkwell> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inkwell'),
      ),
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          child: Ink(
            height: 200,
            width: 200,
            color: boxColor,
            child: const Center(
              child: FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
