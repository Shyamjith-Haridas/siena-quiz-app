import 'package:flutter/material.dart';
import 'package:quiz/screens/home/home_screen.dart';
import 'package:quiz/screens/profile/profile.dart';
import 'package:quiz/screens/quiz_status/quiz_stats.dart';
import 'package:quiz/screens/settings/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  final screensList = <Widget>[
    QuizHomeScreen(),
    QuizAppStatsScreen(),
    QuizAppSettingsScreen(),
    QuizAppProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 49, 77, 1),
      body: screensList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        index: selectedIndex,
        color: Colors.black,
        backgroundColor: Colors.white,
        //backgroundColor: Color.fromRGBO(240, 235, 229, 1),
        animationDuration: Duration(milliseconds: 500),
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.bar_chart,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}