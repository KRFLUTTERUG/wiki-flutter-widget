import 'package:flutter/material.dart';

// Android 와 IOS를 다르게 반영할 수 있게 함
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
