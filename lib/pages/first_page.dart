/// Represents the main page of the application, which includes a bottom navigation bar
/// to navigate between different pages.
///
/// This page contains a [Scaffold] with an [AppBar] and a [BottomNavigationBar]. The
/// [BottomNavigationBar] allows the user to switch between the [HomePage], [SettingsPage],
/// and [ProfilePage] by tapping on the corresponding icon.
///
/// The [selectedIndex] property keeps track of the currently selected page, and the
/// [nagivateBottomBar] method updates this value when the user taps on a different
/// navigation item.
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_project/pages/home_page.dart';
import 'package:new_project/pages/profile_page.dart';
import 'package:new_project/pages/settings_page.dart';

/// Represents the main page of the application, which includes a bottom navigation bar
/// to navigate between different pages.
class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;
  void nagivateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), SettingsPage(), ProfilePage()];

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
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: nagivateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
