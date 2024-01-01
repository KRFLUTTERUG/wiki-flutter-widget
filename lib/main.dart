import 'package:flutter/material.dart';
import 'package:wiki_flutter_examples/package/20231025/fl_chart.dart';
import 'package:wiki_flutter_examples/widget/20210123/adaptive.dart';
import 'package:wiki_flutter_examples/widget/20210123/animatedcrossfade.dart';
import 'package:wiki_flutter_examples/widget/20210123/bottomnavigationbar.dart';
import 'package:wiki_flutter_examples/widget/20210123/choicechip.dart';
import 'package:wiki_flutter_examples/widget/20210123/expanded.dart';
import 'package:wiki_flutter_examples/widget/20210123/expansiontile.dart';
import 'package:wiki_flutter_examples/widget/20210123/fittedbox.dart';
import 'package:wiki_flutter_examples/widget/20210123/hero.dart';
import 'package:wiki_flutter_examples/widget/20210123/pageview.dart';
import 'package:wiki_flutter_examples/widget/20210123/popupmenubutton.dart';
import 'package:wiki_flutter_examples/widget/20210123/rangeslider.dart';
import 'package:wiki_flutter_examples/widget/20210123/showdatepicker.dart';
import 'package:wiki_flutter_examples/widget/20210123/showmodalbottomsheet.dart';
import 'package:wiki_flutter_examples/widget/20210123/showsearch.dart';
import 'package:wiki_flutter_examples/widget/20210123/showtimepicker.dart';
import 'package:wiki_flutter_examples/widget/20210123/sliverappbar.dart';
import 'package:wiki_flutter_examples/widget/20210123/stepper.dart';
import 'package:wiki_flutter_examples/widget/20210123/visibility.dart';
import 'package:wiki_flutter_examples/widget/20210123/wrap.dart';
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
        home: const MyExpanded());
  }
}
