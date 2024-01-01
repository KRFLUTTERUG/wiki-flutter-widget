import 'package:flutter/material.dart';

class MyGridPaper extends StatefulWidget {
  const MyGridPaper({super.key});

  @override
  State<MyGridPaper> createState() => _MyGridPaperState();
}

class _MyGridPaperState extends State<MyGridPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Paper'),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.blue,
          divisions: 1,
          interval: 200,
          subdivisions: 8,
        ),
      ),
    );
  }
}
