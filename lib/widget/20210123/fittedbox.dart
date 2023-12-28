import 'package:flutter/material.dart';

class MyFittedBox extends StatefulWidget {
  const MyFittedBox({Key? key}) : super(key: key);

  @override
  State<MyFittedBox> createState() => _MyFittedBoxState();
}

class _MyFittedBoxState extends State<MyFittedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitted Box'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          color: Colors.red,
          padding: const EdgeInsets.all(10.0),
          child: const FittedBox(
            child: Text(
              'FLUTTER MAP',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
