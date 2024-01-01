import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wiki_flutter_examples/package/20231011/userprovider/skeleton.dart';
import 'package:wiki_flutter_examples/package/20231011/userprovider/user_provider.dart';

class MainUserProvider extends StatelessWidget {
  const MainUserProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (context) => UserProvider()
      )
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal
        ),
        home: const Skeleton(),
      ),
    );
  }
}
