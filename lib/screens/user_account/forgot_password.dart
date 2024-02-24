import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/screens/user_account/sign_up.dart';

import '../../utils/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final _emailController = TextEditingController();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackBG,
      body: SizedBox(
        height: mediaquery.height,
        width: mediaquery.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              const Text(
                "Password Recovery !",
                style: TextStyle(
                  fontSize: 28,
                  color: whiteText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter your email",
                style: TextStyle(
                  fontSize: 18,
                  color: whiteText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              // email field
              Container(
                height: 70.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                decoration: BoxDecoration(
                  color: blackTextFild,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 270.0,
                      child: TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: grayText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          color: whiteText,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/user.svg",
                      height: 20.0,
                      colorFilter: const ColorFilter.mode(
                        grayText,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  // sign in function
                },
                child: Container(
                  height: 70.0,
                  width: mediaquery.width,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: blueButton,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Text(
                    "Send Email",
                    style: TextStyle(
                      fontSize: 14,
                      color: whiteText,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: whiteText,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // sign up page
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignUpScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      " Create",
                      style: TextStyle(
                        fontSize: 14,
                        color: blueText,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
