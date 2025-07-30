import 'package:flutter/material.dart';
import 'package:myapp/banklist.dart';
import 'package:myapp/calender.dart';
import 'package:myapp/facebook.dart';
import 'package:myapp/facebook_model.dart';
import 'package:myapp/facebooklist.dart';
import 'package:myapp/facebooklogin.dart';
import 'package:myapp/fb.dart';
import 'package:myapp/file.dart';
import 'package:myapp/food.dart';
import 'package:myapp/food_login.dart';
import 'package:myapp/foodnotification.dart';
import 'package:myapp/formpage.dart';
import 'package:myapp/homework.dart';
import 'package:myapp/learnlist.dart';
import 'package:myapp/loginpage.dart';
import 'package:myapp/loginpage2.dart';
import 'package:myapp/provider/food_provider.dart';
import 'package:myapp/provider/login_provider.dart';
import 'package:myapp/whatsapplist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FoodProvider())],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: FoodLogin()),
    );
  }
}
