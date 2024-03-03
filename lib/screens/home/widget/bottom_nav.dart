import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screens/home/home_screen.dart';
import 'package:quiz/screens/home/profile.dart';
import 'package:quiz/screens/home/quiz_stats.dart';
import 'package:quiz/screens/home/settings.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  List<TabItem> items = [
    TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    TabItem(
      icon: Icons.align_vertical_bottom,
      title: 'Stats',
    ),
    TabItem(
      icon: Icons.settings,
      title: 'Settings',
    ),
    TabItem(
      icon: Icons.person,
      title: 'Profile',
    ),
  ];

  final screensList = <Widget>[
    QuizHomeScreen(),
    QuizAppStatsScreen(),
    QuizAppSettingsScreen(),
    QuizAppProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: screensList.elementAt(selectedIndex),
      bottomNavigationBar: BottomBarDefault(
        items: items,
        indexSelected: selectedIndex,
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        backgroundColor: Colors.white,
        color: Colors.black.withOpacity(0.9),
        colorSelected: Colors.lightBlue,
      ),
    );
  }
}
