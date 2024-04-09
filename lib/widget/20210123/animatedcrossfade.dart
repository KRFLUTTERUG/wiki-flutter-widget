import 'package:flutter/material.dart';

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({super.key});

  @override
  State<MyAnimatedCrossFade> createState() => _MyAnimatedCrossFadeState();
}

class _MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Cross Fade'),
        actions: [
          TextButton(onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          }, child: const Text('Switch',style: TextStyle(color: Colors.black38),))
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.asset('images/mountains.jpg',width: 350,),
          secondChild: Image.asset('images/milkyway.jpg',width: 200,),
          crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
