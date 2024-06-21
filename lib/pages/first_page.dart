// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite, size: 48),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('HOME'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('SETTINGS'),
              onTap: () {
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
