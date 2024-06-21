// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        home: Scaffold(
          body: Center(
            child: GestureDetector(
              onTap: () {
                userTapped();
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple[200],
                child: Center(child: Text("Tap Me")),
              ),
            ),
          ),
        ));
  }
}
