import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/screens/user_account/login_screen.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/size_config.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // controller
  final _createUserController = TextEditingController();
  final _createEmailController = TextEditingController();
  final _createPasswordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: blackBG,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Create new account",
                  style: TextStyle(
                    fontSize: 28,
                    color: whiteText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Please fill in the form to continue",
                  style: TextStyle(
                    fontSize: 14,
                    color: grayText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                // full name field
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
                          controller: _createUserController,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Full Name",
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
                          controller: _createEmailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email Address",
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
                        child: TextField(
                          controller: _createPasswordController,
                          obscureText: _isPasswordVisible,
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
                        child: _isPasswordVisible
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

                const SizedBox(height: 40),
                // sign in button
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
                      color: blueButton,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text(
                      "Create Account",
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
                // already have an a account
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
                        // login page
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        " Login",
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
