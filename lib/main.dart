// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran_app/Screens/HomeScreen.dart';
import 'package:quran_app/Screens/LoginScreen.dart';
import 'package:quran_app/Screens/PlayScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/playscreen': (context) => playScreen(),
        '/homescreen': (context) => HomeScreen(),
        '/loginscreen': (context) => loginscreen(),
      },
      home: loginscreen(),
    );
  }
}
