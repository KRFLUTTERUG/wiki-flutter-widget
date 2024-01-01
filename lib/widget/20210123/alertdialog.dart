import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(context: context, builder: (context) =>
                AlertDialog(
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, child: const Text('Close'))
                  ],
                  title: const Text('Flutter Alert'),
                  contentPadding: const EdgeInsets.all(20.0),
                  content: const Text('This is Alert Dialog Content'),
                )
            );
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
