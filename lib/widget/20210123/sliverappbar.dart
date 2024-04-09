import 'package:flutter/material.dart';

/*
* SliverAppBar : 스크롤되는 내용에 따라 동적으로 크기를 조절할 수 있는 위젯
* 앱의 상단 바가 사용자가 아래로 스크롤할 때 화면 위쪽에 고정되거나 숨겨지도록 만들 수 있다.
* */
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
