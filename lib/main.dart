import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_chai/config/colors.dart';
import 'package:food_chai/screens/home_screen/home_screen.dart';

import 'auth/sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:  primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor
      ),
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
