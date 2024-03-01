// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/resources/authentication_methods.dart';
import 'package:quiz/screens/home_screen.dart';
import 'package:quiz/screens/user_account/forgot_password.dart';
import 'package:quiz/screens/user_account/sign_up.dart';
import '../../utils/colors.dart';
import '../../utils/size_config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  AuthenticationMethods authenticationMethods = AuthenticationMethods();

  bool _isPasswordVisible = false;

  String email = "", password = "";

  @override
  void dispose() {
    _userController.text;
    _passwordController.text;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: blackBG,
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Welcome !",
                  style: TextStyle(
                    fontSize: 28,
                    color: whiteText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Please sign in to your account",
                  style: TextStyle(
                    fontSize: 14,
                    color: grayText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 60),
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
                        child: TextFormField(
                          controller: _userController,
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
                // password field
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
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: !_isPasswordVisible,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: !_isPasswordVisible
                            ? SvgPicture.asset(
                                "assets/icons/hide.svg",
                                height: 20.0,
                                colorFilter: const ColorFilter.mode(
                                  grayText,
                                  BlendMode.srcIn,
                                ),
                              )
                            : SvgPicture.asset(
                                "assets/icons/visibility.svg",
                                height: 20.0,
                                colorFilter: const ColorFilter.mode(
                                  grayText,
                                  BlendMode.srcIn,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: GestureDetector(
                      onTap: () {
                        // forgot password function
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          color: grayText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                // sign in button
                GestureDetector(
                  onTap: () async {
                    String output = await authenticationMethods.signInUser(
                      userEmail: _userController.text,
                      userPassword: _passwordController.text,
                    );

                    if (output == "success") {
                      // doing next function
                      log("login success");
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const QuizHomeScreen(),
                        ),
                      );
                    } else {
                      final snackBar = SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        content: Text(output),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    height: 70.0,
                    width: width,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: blueButton,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 14,
                        color: whiteText,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // google sign in button
                GestureDetector(
                  onTap: () {
                    // sign in function
                  },
                  child: Container(
                    height: 70.0,
                    width: width,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 28.0,
                          width: 60.0,
                        ),
                        const Text(
                          "Sign in with google",
                          style: TextStyle(
                            fontSize: 14,
                            color: blackBG,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                // don't have an a account
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
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        " Sign Up",
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
      ),
    );
  }
}
