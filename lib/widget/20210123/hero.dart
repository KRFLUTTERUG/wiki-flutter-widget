import 'package:flutter/material.dart';

/*
* Flutter 에서 이미지를 화면 전환 시 부드럽게 전환하기 위해 Hero 위젯을 사용
* Hero 위젯은 두 개의 화면 사이에서 일부 Widget(일반적으로는 이미지, 아이콘 또는 텍스트)의 애니메이션 전환을 가능하게 하는 위젯
* 영웅처럼 눈에 띄고 주목받는 애니메이션을 보여준다는 의미에서 Hero
* */

class MyHero extends StatelessWidget {
  const MyHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PageRoute(
                    key: UniqueKey(),
                  )));
        },
        child: ClipRRect(
          child: Hero(
            tag: 'tag',
            child: Image.asset(
              'images/mountains.jpg',
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}

class PageRoute extends StatelessWidget {
  const PageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(tag: 'tag', child: Image.asset("images/mountains.jpg")),
    );
  }
}
