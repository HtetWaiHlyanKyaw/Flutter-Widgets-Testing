// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.deepPurple[200],
          // appBar: AppBar(
          //   title: Text("My App Bar",
          //       style: TextStyle(color: Colors.white, fontSize: 18)),
          //   centerTitle: true,
          //   backgroundColor: Colors.deepPurple[500],
          //   leading: Icon(
          //     Icons.menu,
          //     color: Colors.white,
          //   ),
          //   actions: [
          //     IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.logout,
          //           color: Colors.white,
          //         ))
          //   ],
          // ),
          // body: Center(
          //   child: Container(
          //     height: 300,
          //     width: 300,
          //     decoration: BoxDecoration(
          //       color: Colors.deepPurple[500],
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     padding: EdgeInsets.all(25),
          //     child: Icon(
          //       Icons.favorite,
          //       color: Colors.white,
          //       size: 64,
          //     ),
          //     // child: Text(
          //     //   "Htet Wai",
          //     //   style: TextStyle(
          //     //     color: Colors.white,
          //     //     fontSize: 28,
          //     //     fontWeight: FontWeight.bold,
          //     //   ),
          //     // ),
          //   ),
          // ),
          body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 350,
            color: Colors.deepPurple,
          ),
          Container(
            width: 350,
            color: Colors.deepPurple[400],
          ),
          Container(
            width: 350,
            color: Colors.deepPurple[200],
          )
        ],
      )),
    );
  }
}
