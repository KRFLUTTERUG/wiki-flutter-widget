import 'package:flutter/material.dart';

class MyPositioned extends StatefulWidget {
  const MyPositioned({super.key});

  @override
  State<MyPositioned> createState() => _MyPositionedState();
}

class _MyPositionedState extends State<MyPositioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 40,
                top: 40,
                child: Image.asset('images/mountains.jpg', width: 250,)),
            Positioned(
                left: 80,
                top: 80,
                child: Image.asset('images/mountains.jpg', width: 250,)),
            Positioned(
                left: 120,
                top: 120,
                child: Image.asset('images/mountains.jpg', width: 250,))
          ],
        ),
      ),
    );
  }
}
