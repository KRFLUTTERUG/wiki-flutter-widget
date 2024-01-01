import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  const MyTable({super.key});

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 1'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 2'),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Cell 3'),
      )
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          defaultColumnWidth: const FixedColumnWidth(120.0),
          children: <TableRow>[
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow
          ],
        ),
      ),
    );
  }
}
