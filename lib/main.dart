import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:wiki_flutter_examples/package/20231025/fl_chart.dart';
import 'package:wiki_flutter_examples/widget/20210123/lib/20210123.dart';
import 'package:wiki_flutter_examples/widget/20230602/draggable.dart';
import 'package:wiki_flutter_examples/widget/20231213/lib/20231213.dart';

import 'package/20231011/counterprovider/main_counterprovider.dart';
import 'package/20231011/userprovider/main_userprovider.dart';

void main() {
  // Test 시 아래 2줄은 주석 처리 필요
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
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
        home: const MainCounterProvider());
  }
}
