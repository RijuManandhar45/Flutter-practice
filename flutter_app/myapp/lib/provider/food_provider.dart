import 'package:flutter/material.dart';

class FoodProvider with ChangeNotifier {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
}

bool isVisible = true;
void toggleVisible() {
  isVisible = !isVisible;
  // notifyListeners();
}

List<Auth> authList = [Auth(email: "riju@gmail.com", password: "riju123")];

class Auth {
  String? email;
  String? password;

  Auth({this.email, this.password});
}
