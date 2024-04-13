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
            SizedBox(height: 20),
            Text(
              "Sport",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
            ),
            Image.asset("assets/images/quiz_category_image/sports.jpg"),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    const SizedBox(height: 15),
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
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black45,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Easy",
                            style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black45,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Medium",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 65,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black45,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Hard",
                          style: TextStyle(
                            fontSize: 18,
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
