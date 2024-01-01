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
              flex: 4,
                fit: FlexFit.tight,
                child: Container(
                  height: 50,
                  color: Colors.blue,
                )),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
              height: 150,
              color: Colors.orange,
            )),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
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
