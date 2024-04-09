import 'package:flutter/material.dart';

class MyShowDatePicker extends StatefulWidget {
  const MyShowDatePicker({super.key});

  @override
  State<MyShowDatePicker> createState() => _MyShowDatePickerState();
}

class _MyShowDatePickerState extends State<MyShowDatePicker> {
  DateTime _datetime = DateTime(2100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShowDatePicker'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${_datetime.day}-${_datetime.month}-${_datetime.year}',
            style: const TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: () async {
              DateTime? _newDate = await showDatePicker(
                  context: context,
                  initialDate: _datetime,
                  firstDate: DateTime(1800),
                  lastDate: DateTime(3000));
              if (_newDate != null){
                setState(() {
                  _datetime = _newDate;
                });
              }
            }, child: const Text('Get Date'))
          ],
        ),
      ),
    );
  }
}
