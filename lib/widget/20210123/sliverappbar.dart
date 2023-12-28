import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({super.key});

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            title: Text('Flutter'),
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('FlexibleSpaceBar'),
              centerTitle: true,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              const Text('SLIVER',
              style: TextStyle(fontSize: 600),)
            ]
          ))
        ],
      ),
    );
  }
}
