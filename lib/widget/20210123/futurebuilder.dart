import 'package:flutter/material.dart';

class MyFutureBuilder extends StatefulWidget {
  const MyFutureBuilder({super.key});

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}

Future<String> getData() async{
  await Future.delayed(const Duration(seconds: 1));
  // throw 'An Error Occured';
  return 'It Works';
}
class _MyFutureBuilderState extends State<MyFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Builder'),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError){
              return Text(snapshot.error.toString());
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    snapshot.data.toString()
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {

                    });
                  }, child: const Text('Refresh'))
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
