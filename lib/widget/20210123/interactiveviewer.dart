import 'package:flutter/material.dart';

class MyInteractiveViewer extends StatefulWidget {
  const MyInteractiveViewer({super.key});

  @override
  State<MyInteractiveViewer> createState() => _MyInteractiveViewerState();
}

class _MyInteractiveViewerState extends State<MyInteractiveViewer> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Interactive Viewer'),
  //     ),
  //     body: Center(
  //       child: InteractiveViewer(
  //         maxScale: 5,
  //         child: Image.asset('images/mountains.jpg'),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Interactive Viewer'),
          ),
        ),
      ),
    );
  }
}
