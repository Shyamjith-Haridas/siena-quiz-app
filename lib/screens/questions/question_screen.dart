import 'package:flutter/material.dart';
import 'package:quiz/utils/app_dimensions.dart';

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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: SizedBox(
          height: AppDimensions.screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 60),
              Text(
                "Question 1 of 10",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 20),
              Text(
                "What is the diameter of a basketball hoop in inches?",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Image.asset("assets/images/questions/sports/basketball.jpg"),
              Container(
                height: 60,
                width: AppDimensions.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Center(
                  child: Text(
                    "18 inches",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: AppDimensions.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Center(
                  child: Text(
                    "16 inches",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: AppDimensions.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Center(
                  child: Text(
                    "14 inches",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Container(
                height: 60,
                width: AppDimensions.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Center(
                  child: Text(
                    "20 inches",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
