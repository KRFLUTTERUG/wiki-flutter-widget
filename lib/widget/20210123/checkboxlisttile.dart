import 'package:flutter/material.dart';

class MyCheckboxListTile extends StatefulWidget {
  const MyCheckboxListTile({super.key});

  @override
  State<MyCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox List Tile'),
      ),
      body: Column(children: [
        CheckboxListTile(
          title: const Text('Checkbox List Tile'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.lightGreen,
        ),
        CheckboxListTile(
          title: const Text('Checkbox List Tile 2'),
          value: _isChecked2,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked2 = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.lightGreen,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.lightBlueAccent,
          tristate: true,
          subtitle: const Text('Subtitle'),
        ),
      ]),
    );
  }
}
