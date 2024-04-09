import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatefulWidget {
  const MyPopupMenuButton({super.key});

  @override
  State<MyPopupMenuButton> createState() => _MyPopupMenuButtonState();
}

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(value: firstPage,child: Text(firstPage),),
            PopupMenuItem(value: secondPage,child: Text(secondPage),),
          ],
          onSelected: (String newValue) {
            setState(() {
              title = newValue;
            });
          },)
        ],
      ),
    );
  }
}
