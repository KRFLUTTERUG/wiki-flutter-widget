import 'package:flutter/material.dart';

class MySpreadOperator extends StatefulWidget {
  const MySpreadOperator({super.key});

  @override
  State<MySpreadOperator> createState() => _MySpreadOperatorState();
}

class _MySpreadOperatorState extends State<MySpreadOperator> {
  @override
  Widget build(BuildContext context) {
    List<Widget> imageList = [
      Image.asset('images/mountains.jpg'),
      Image.asset('images/mountains.jpg'),
      Image.asset('images/mountains.jpg')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Spread Operator'),
      ),
      body: Column(
        children: [
          Image.asset('images/mountains.jpg'),
          ...imageList  //Column(children: imageList,)
        ]
      ),
    );
  }
}
