import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues values = const RangeValues(0.1, 0.6);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          divisions: 10,
          labels: labels,
          onChanged: (newValues) {
            setState(() {
              values = newValues;
            });
          },
        ),
      ),
    );
  }
}
