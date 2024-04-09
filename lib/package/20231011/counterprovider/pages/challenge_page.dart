import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wiki_flutter_examples/package/20231011/counterprovider/counter_provider.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.watch<CounterProvider>().value.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: () {
            context.read<CounterProvider>().incrementCounter();
          },
          child: Icon(Icons.add),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: () {
            context.read<CounterProvider>().decrementCounter();
          },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
