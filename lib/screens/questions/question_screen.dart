import 'package:flutter/material.dart';
import 'package:quiz/utils/app_dimensions.dart';

import 'widget/choice_container.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.pHorizontal20,
          vertical: AppDimensions.pVertical40,
        ),
        child: SizedBox(
          height: AppDimensions.screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: AppDimensions.height60),
              Text(
                "Question 1 of 10",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: AppDimensions.fontSize18,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: AppDimensions.height20),
              Text(
                "What is the diameter of a basketball hoop in inches?",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: AppDimensions.fontSize28,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Image.asset("assets/images/questions/sports/basketball.jpg"),
              OptionContainer(
                choiceText: "18 inches",
              ),
              OptionContainer(choiceText: "16 inches"),
              OptionContainer(choiceText: "14 inches"),
              OptionContainer(choiceText: "20 inches")
            ],
          ),
        ),
      ),
    );
  }
}
