import 'package:flutter/material.dart';

class MyToolTip extends StatefulWidget {
  const MyToolTip({super.key});

  @override
  State<MyToolTip> createState() => _MyToolTipState();
}

class _MyToolTipState extends State<MyToolTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
      ),
      body: Center(
        child: Tooltip(
          message: 'This is Tooltip',
          child: Image.asset('images/mountains.jpg'),
        ),
      ),
    );
  }
}
