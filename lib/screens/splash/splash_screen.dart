import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';
import 'package:quiz/screens/splash/onboarding_screens/onboarding.dart';

class QuizSplashScreen extends StatefulWidget {
  const QuizSplashScreen({super.key});

  @override
  State<QuizSplashScreen> createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen>
    with TickerProviderStateMixin {
  void gotoOnboardScreen() {
    Timer(
      const Duration(
        seconds: 3,
      ),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    gotoOnboardScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: SizedBox(
        //   height: 180,
        //   width: 250,
        //   child: Lottie.asset(
        //     "assets/animations/welcome_animation.json",
        //     // controller: _animationController,
        //   ),
        // ),
        child: Text(
          "QUIZIFY",
          style: TextStyle(),
        ),
      ),
    );
  }
}
