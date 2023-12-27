import 'package:flutter/material.dart';

class MyDraggable extends StatefulWidget {
  const MyDraggable({super.key});

  @override
  State<MyDraggable> createState() => _MyDraggableState();
}

class _MyDraggableState extends State<MyDraggable> {
  Color outlineColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Draggable<Color>(
            data: Colors.blue,
            feedback: MyRoundedBlueBox(),
            childWhenDragging: MyGreyBox(),
            child: MyBlueBox(),
          ),
          DragTarget<Color>(
            onWillAccept: (value) => value != Colors.black,
            onAccept: (value) => {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Accept $value'),
                duration: const Duration(seconds: 1),
              )),
              setState(() {
                outlineColor = value;
              })
            },
            onLeave: (value) => {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Left $value behind'),
                duration: const Duration(seconds: 1),
              ))
            },
            builder: (context, candidates, rejects) {
              return candidates.isNotEmpty
                  ? MyBigColorfulBox(candidates[0]!)
                  : MyDashedOutline(color: outlineColor);
            },
          )
        ],
      ),
    );
  }
}

class MyDashedOutline extends StatelessWidget {
  final Color color;

  const MyDashedOutline({Key? key, this.color = Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(12),
        color: color, // 변경된 색상을 여기에 적용
      ),
    );
  }
}

class MyBigColorfulBox extends StatelessWidget {
  final Color color;

  const MyBigColorfulBox(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Dropped',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyRoundedBlueBox extends StatelessWidget {
  const MyRoundedBlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          '12',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyGreyBox extends StatelessWidget {
  const MyGreyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey,
    );
  }
}

class MyBlueBox extends StatelessWidget {
  const MyBlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: const Center(
        child: Text(
          '12',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
