import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController username =
      TextEditingController(); //refresh nabhaikana value janxa so print garna mildaina  // setState nabhako
  final TextEditingController password = TextEditingController();

  bool isVisible = true;

  void toggleVisible() {
    isVisible = !isVisible;
    notifyListeners();
  }

  List<Auth> userList = [Auth(userName: "Riju Manandhar", password: "riju45")];

  void checkUser(BuildContext context) {
    // context lai chinako
    final okayUser = userList.firstWhere(
      (user) =>
          user.userName == username.text.trim() &&
          user.password == password.text.trim(),
      orElse: () => Auth(userName: "", password: ""),
    );
    if (okayUser.userName != "") {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("✅Login Sucessful")));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid Username/Password")));
    }
  }
} // notify garxa

class Auth {
  String? userName;
  String? password;

  Auth({this.userName, this.password});
}
