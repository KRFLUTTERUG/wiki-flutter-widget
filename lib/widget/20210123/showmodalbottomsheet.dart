import 'package:flutter/material.dart';

class MyShowModalBottomSheet extends StatefulWidget {
  const MyShowModalBottomSheet({super.key});

  @override
  State<MyShowModalBottomSheet> createState() => _MyShowModalBottomSheetState();
}

class _MyShowModalBottomSheetState extends State<MyShowModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowModalBottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: ElevatedButton(
                        child: Text('Close'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
