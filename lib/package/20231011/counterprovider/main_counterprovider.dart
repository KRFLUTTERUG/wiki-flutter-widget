import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wiki_flutter_examples/package/20231011/counterprovider/counter_provider.dart';
import 'package:wiki_flutter_examples/package/20231011/counterprovider/skeleton.dart';

class MainCounterProvider extends StatelessWidget {
  const MainCounterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const Skeleton(),
      ),
    );
  }
}
