import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.asset('images/mountains.jpg'),
            ),
            Center(
              child: Image.asset('images/panda.png',width: 100,),
            )
          ],
        ),
      ),
    );
  }
}
