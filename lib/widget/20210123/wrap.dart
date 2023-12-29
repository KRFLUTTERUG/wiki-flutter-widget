import 'package:flutter/material.dart';

class MyWrap extends StatefulWidget {
  const MyWrap({super.key});

  @override
  State<MyWrap> createState() => _MyWrapState();
}

class _MyWrapState extends State<MyWrap> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: EdgeInsets.all(8.0),
      child: Image.asset(
        'images/mountains.jpg',
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
    List<Widget> _list = [_image, _image, _image, _image, _image];
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Center(
        child: Row( // 기존의 Row를 Wrap으로!
          children: _list,
        ),
      ),
    );
  }
}
