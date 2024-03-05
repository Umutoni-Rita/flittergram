// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, non_constant_identifier_names

import 'package:flittergram/pages/explore.dart';
import 'package:flittergram/pages/home.dart';
import 'package:flittergram/pages/post.dart';
import 'package:flittergram/pages/profile.dart';
import 'package:flittergram/pages/reels.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _children = [
    UserHome(),
    Explore(),
    Post(),
    Reels(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
