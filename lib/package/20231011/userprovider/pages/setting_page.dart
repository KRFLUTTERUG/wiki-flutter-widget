import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../user_provider.dart';

class MySettingPage extends StatefulWidget {

  const MySettingPage({super.key});

  @override
  State<MySettingPage> createState() => _MySettingPageState();
}

class _MySettingPageState extends State<MySettingPage> {
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('Username: ',
                style: TextStyle(
                  fontSize: 20
                ),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            TextField(
              controller: userNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              context.read<UserProvider>().changeUserName(newUserName: userNameController.text);
              FocusManager.instance.primaryFocus?.unfocus();
              userNameController.clear();
            }, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
