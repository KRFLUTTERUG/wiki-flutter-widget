import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({super.key});

  @override
  State<MyVisibility> createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visibility'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: Text(
              'Switch',
              style: TextStyle(color: Colors.black26),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/mountains.jpg',
                height: 100,
              ),
              Visibility(
                  visible: _isVisible,
                  child: Image.asset('images/mountains.jpg')),
              Image.asset(
                'images/mountains.jpg',
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
