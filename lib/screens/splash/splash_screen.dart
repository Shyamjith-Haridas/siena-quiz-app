import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/screens/home/widget/bottom_nav.dart';
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
        milliseconds: 5700,
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
          return const BottomNavScreen();
        } else {
          return const OnBoardingScreen();
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
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Color.fromRGBO(30, 41, 37, 1),
      backgroundColor: Colors.black.withOpacity(0.2),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Lottie.asset(
                "assets/animations/welcome_image.json",
                // controller: AnimationController(
                //   vsync: this,
                //   duration: Duration(
                //     seconds: 10,
                //   ),
                // ),
              ),
            ),
            // Positioned(
            //   bottom: 12.0,
            //   left: screenSize.width / 2 - 20,
            //   child: SpinKitThreeBounce(
            //     size: 28.0,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
