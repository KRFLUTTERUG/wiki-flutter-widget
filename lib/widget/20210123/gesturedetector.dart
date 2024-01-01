import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({super.key});

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gesture Detector'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _counter += 1;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                _counter.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
