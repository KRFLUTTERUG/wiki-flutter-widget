import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  String userName;

  UserProvider({
    this.userName = "Example"
  });

  void changeUserName({
    required String newUserName,
  }) async {
    userName = newUserName;
    notifyListeners();
  }
}