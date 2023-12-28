import 'package:flutter/material.dart';

/*
* Adaptive 위젯 : Flutter에서 플랫폼에 맞게 위젯을 조정하는 데 사용
* 앱이 iOS와 Android와 같은 여러 플랫폼에서 일관된 사용자 경험을 제공
* */

class MyAdaptive extends StatefulWidget {
  const MyAdaptive({super.key});

  @override
  State<MyAdaptive> createState() => _MyAdaptiveState();
}

class _MyAdaptiveState extends State<MyAdaptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider(value: 1, onChanged: (double newValue) {}),
            SwitchListTile.adaptive(
              value: true,
              onChanged: (bool newValue) {},
              title: const Text('Switch List Tile'),
            ),
            Switch.adaptive(value: true, onChanged: (bool newValue) {}),
            Icon(Icons.adaptive.share),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
