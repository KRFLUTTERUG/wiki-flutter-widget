import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Page 1',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                'Page 2',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: Center(
              child: Text(
                'Page 3',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          )
        ],
      ),
    );
  }
}
