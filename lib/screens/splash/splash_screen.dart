import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screens/home_screen.dart';
//import 'package:lottie/lottie.dart';
//import 'package:quiz/screens/splash/onboarding_screens/onboarding.dart';
import 'package:quiz/screens/user_account/login_screen.dart';

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
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => checkUserLoggedinOrNot(),
          ),
        );
      },
    );
  }

  Widget checkUserLoggedinOrNot() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, AsyncSnapshot<User?> user) {
        if (user.connectionState == ConnectionState.waiting) {
          return const Padding(
            padding: EdgeInsets.only(
              bottom: 5.0,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.yellow,
              ),
            ),
          );
        } else if (user.hasData) {
          return const QuizHomeScreen();
        } else {
          return const LoginScreen();
        }
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
