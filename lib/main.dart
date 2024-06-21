// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_project/pages/first_page.dart';
import 'package:new_project/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("User Tapped");
  }

  // List names = ["Htet Wai", "Thiri"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          'firstpage': (context) => FirstPage(),
          '/secondpage': (context) => SecondPage(),
        });
  }
}
