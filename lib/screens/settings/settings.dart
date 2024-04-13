import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/screens/user_account/login_screen.dart';
import 'package:quiz/utils/app_dimensions.dart';

import 'swidgets/settings_container_row.dart';

class QuizAppSettingsScreen extends StatelessWidget {
  const QuizAppSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: AppDimensions.screenHeight,
          width: AppDimensions.screenWidth,
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(49, 49, 77, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    LottieBuilder.asset("assets/animations/premium.json"),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Go Premium!",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          "Unlock All Questions!",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // settings
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SettingsContainerRow(
                      leadingIconUrl: "assets/icons/premium.png",
                      settingsText: "Premium",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Divider(
                        height: 1,
                        color: Colors.black54,
                      ),
                    ),
                    SettingsContainerRow(
                      leadingIconUrl: "assets/icons/daily_questions.png",
                      settingsText: "Daily Questions",
                      trailingText: "20",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Divider(
                        height: 1,
                        color: Colors.black54,
                      ),
                    ),
                    SettingsContainerRow(
                      leadingIconUrl: "assets/icons/score_goal.png",
                      settingsText: "Score Goal",
                      trailingText: "80%",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // rate us
              Container(
                height: 140,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SettingsContainerRow(
                      leadingIconUrl: "assets/icons/rate_us.png",
                      settingsText: "Rate us",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Divider(
                        height: 1,
                        color: Colors.black54,
                      ),
                    ),
                    SettingsContainerRow(
                      leadingIconUrl: "assets/icons/share.png",
                      settingsText: "Share with a friend",
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // reset progress
              Container(
                height: 70,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/round_arrow.png",
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Reset Progress",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),

              // sign out
              SizedBox(height: 30),

              // reset progress
              GestureDetector(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();

                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (ctx) => const LoginScreen(),
                      ),
                      (route) => false);
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/logout.png",
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Sign Out",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
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
