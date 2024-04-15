import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz/screens/questions/question_screen.dart';
import 'package:quiz/utils/app_dimensions.dart';

class ChooseLevelScreen extends StatefulWidget {
  const ChooseLevelScreen({super.key});

  @override
  State<ChooseLevelScreen> createState() => _ChooseLevelScreenState();
}

class _ChooseLevelScreenState extends State<ChooseLevelScreen> {
  Color containerColor = Colors.white;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SizedBox(
        height: AppDimensions.screenHeight,
        width: AppDimensions.screenWidth,
        child: Column(
          children: [
            SizedBox(height: AppDimensions.height20),
            Text(
              "Sport",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: AppDimensions.fontSize25,
                  ),
            ),
            Image.asset("assets/images/quiz_category_image/sports.jpg"),
            SizedBox(height: AppDimensions.height10),
            Padding(
              padding: EdgeInsets.all(AppDimensions.padding20),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Choose your level",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.grey,
                              fontSize: AppDimensions.fontSize18,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    SizedBox(height: AppDimensions.height15),
                    GestureDetector(
                      onTap: () {
                        log("message");

                        setState(
                          () {
                            containerColor = containerColor == Colors.white
                                ? Colors.black
                                : Colors.white;
                            textColor = textColor == Colors.black
                                ? Colors.white
                                : Colors.black;
                          },
                        );

                        // function
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => QuestionScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: AppDimensions.height65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius:
                              BorderRadius.circular(AppDimensions.radius30),
                          border: Border.all(
                            color: Colors.black45,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Easy",
                            style: TextStyle(
                              fontSize: AppDimensions.fontSize18,
                              color: textColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: AppDimensions.height15),
                    Container(
                      height: AppDimensions.height65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radius30),
                        border: Border.all(
                          color: Colors.black45,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Medium",
                          style: TextStyle(
                            fontSize: AppDimensions.fontSize18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: AppDimensions.height15),
                    Container(
                      height: AppDimensions.height65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radius30),
                        border: Border.all(
                          color: Colors.black45,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Hard",
                          style: TextStyle(
                            fontSize: AppDimensions.fontSize18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
