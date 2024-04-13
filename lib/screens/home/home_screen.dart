// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:quiz/screens/questions/choose_level.dart';

import 'package:quiz/utils/app_dimensions.dart';
import 'widget/header_container.dart';
import 'widget/header_container_content.dart';

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: AppDimensions.screenHeight,
          width: AppDimensions.screenWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderContainer(
                  child: HeaderContainerContent(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppDimensions.padding25,
                    bottom: AppDimensions.padding20,
                  ),
                  child: Text(
                    "Explore By Categories",
                    style: TextStyle(
                      fontSize: AppDimensions.fontSize20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                // appDimension will start from here.
                // quiz catelog
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ChooseLevelScreen(),
                            ),
                          );
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 185,
                            width: 185,
                            decoration: BoxDecoration(
                              // color: Color.fromRGBO(247, 246, 242, 1),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 110,
                                  child: Image.asset(
                                    "assets/images/quiz_category_image/sports.jpg",
                                  ),
                                ),
                                Text(
                                  "Sports",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 110,
                                child: Image.asset(
                                  "assets/images/quiz_category_image/place.jpg",
                                ),
                              ),
                              Text(
                                "Place",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            // color: Color.fromRGBO(247, 246, 242, 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 110,
                                child: Image.asset(
                                  "assets/images/quiz_category_image/animal.jpg",
                                ),
                              ),
                              Text(
                                "Animal",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 110,
                                child: Image.asset(
                                  "assets/images/quiz_category_image/fruit.jpg",
                                ),
                              ),
                              Text(
                                "Fruit",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            // color: Color.fromRGBO(247, 246, 242, 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 110,
                                child: Image.asset(
                                  "assets/images/quiz_category_image/football.jpg",
                                ),
                              ),
                              Text(
                                "Football",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 110,
                                width: 120,
                                child: Image.asset(
                                  "assets/images/quiz_category_image/history.jpg",
                                ),
                              ),
                              Text(
                                "History",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 246, 242, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.sports_basketball,
                                size: 48,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Sports",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 185,
                          width: 185,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(247, 246, 242, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.sports_basketball,
                                size: 48,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Sports",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
