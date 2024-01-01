import 'package:flutter/material.dart';

class MyWillPopScope extends StatefulWidget {
  const MyWillPopScope({super.key});

  @override
  State<MyWillPopScope> createState() => _MyWillPopScopeState();
}

class _MyWillPopScopeState extends State<MyWillPopScope> {
  @override
  Widget build(BuildContext context) {
    // 'WillPopScope' is deprecated and shouldn't be used.
    // Use PopScope instead.
    // This feature was deprecated after v3.12.0-1.0.pre
    return PopScope(
        canPop: false,
      onPopInvoked: (didPop) async  {
          if (didPop) {
            return;
          }
        final nav = Navigator.of(context);
          bool value = await someFunc();
          if (value) {
            nav.pop();
          }
      },
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Will Pop Scope'),
        ),
        body: const Center(),
      )
    );
  }

  someFunc() {}
}
