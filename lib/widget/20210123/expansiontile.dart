import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  const MyExpansionTile({super.key});

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile'),
      ),
      body: const ExpansionTile(
        title: Text('See more'),
        leading: Icon(Icons.info),
        backgroundColor: Colors.black12,
        children: [
          ListTile(title: Text('First'),),
          ListTile(title: Text('Second'),),
          ListTile(title: Text('Third'),)
        ],
      ),
    );
  }
}
