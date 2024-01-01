import 'package:flutter/material.dart';

class MyFlexible extends StatefulWidget {
  const MyFlexible({super.key});

  @override
  State<MyFlexible> createState() => _MyFlexibleState();
}

class _MyFlexibleState extends State<MyFlexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
                child: Container(
              color: Colors.blue,
            )),
            Flexible(
                child: Container(
              color: Colors.orange,
            )),
            Flexible(
                child: Container(
              height: 150,
              color: Colors.red,
            )),
          ],
        ),
      ),
    );
  }
}
