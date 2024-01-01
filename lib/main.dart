import 'package:flutter/material.dart';
import 'package:wiki_flutter_examples/package/20231025/fl_chart.dart';
import 'package:wiki_flutter_examples/widget/20210123/lib/20210123.dart';
import 'package:wiki_flutter_examples/widget/20230602/draggable.dart';
import 'package:wiki_flutter_examples/widget/20231213/gap.dart';
import 'package:wiki_flutter_examples/widget/20231213/overlayportal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widget Examples',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyCheckboxListTile());
  }
}
