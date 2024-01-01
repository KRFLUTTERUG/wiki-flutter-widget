import 'package:flutter/material.dart';

class MyShowTimePicker extends StatefulWidget {
  const MyShowTimePicker({super.key});

  @override
  State<MyShowTimePicker> createState() => _MyShowTimePickerState();
}

class _MyShowTimePickerState extends State<MyShowTimePicker> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowTimePicker'),
      ),
      body: Center(
        child: Text(
          '${time!.hour.toString()}:${time!.minute.toString()}',
          style: TextStyle(fontSize: 60),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_time_outlined),
        onPressed: () async {
          TimeOfDay? newTime =
              await showTimePicker(context: context, initialTime: time!);
          if (newTime != null){
            setState(() {
              time = newTime;
            });
          }
        },
      ),
    );
  }
}
