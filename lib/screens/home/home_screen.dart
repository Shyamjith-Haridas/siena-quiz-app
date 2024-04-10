// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/screens/home/custom_shaped/custom_clipper.dart';
import 'package:quiz/utils/app_dimensions.dart';

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          HeaderContainer(
            child: Column(),
          ),
        ],
      )),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        height: 350,
        width: AppDimensions.screenWidth,
        color: Color.fromRGBO(49, 49, 77, 1),
      ),
    );
  }
}
