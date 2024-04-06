import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/screens/home/widget/community_container.dart';
import 'package:quiz/screens/home/widget/settings_container.dart';

class QuizAppSettingsScreen extends StatelessWidget {
  const QuizAppSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: screenSize.height,
          width: screenSize.width,
          child: Stack(
            children: [
              Container(
                height: screenSize.height,
                width: screenSize.width,
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(49, 49, 77, 1),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 600,
                  width: screenSize.width,
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 40.0,
                  ),
                  decoration: BoxDecoration(
                    //color: Color.fromRGBO(240, 235, 229, 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        "Study Settings",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 15),
                      StudySettingsContainer(
                        title: "Difficulty",
                        type: "Easy",
                      ),
                      const SizedBox(height: 10),
                      StudySettingsContainer(
                        title: "Daily Goal",
                        type: "20 qtsn",
                      ),
                      const SizedBox(height: 10),
                      StudySettingsContainer(
                        title: "Score Goal",
                        type: "80%",
                      ),
                      const SizedBox(height: 20),

                      // community
                      Text(
                        "Community",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // CommunityContainer(
                      //   containerColor: Colors.yellow,
                      //   mainTitle: "Rate Us",
                      //   subTitle: "your rating help us to improve!",
                      //   imageUrl: "assets/icons/star.png",
                      // ),
                      // const SizedBox(height: 10),
                      CommunityContainer(
                        containerColor: Colors.blue.shade600,
                        mainTitle: "Share ",
                        subTitle: "Link to app store",
                        imageUrl: "assets/icons/paper_plane.png",
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 60,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(226, 110, 81, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Reset Progress",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Image.asset(
                              "assets/icons/round_arrow.png",
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 35,
                child: Lottie.asset("assets/animations/premium.json"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
