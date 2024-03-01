// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/resources/authentication_methods.dart';
import 'package:quiz/screens/user_account/login_screen.dart';
import 'package:quiz/screens/user_account/sign_up.dart';

import '../../utils/colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _emailController = TextEditingController();

  AuthenticationMethods authenticationMethods = AuthenticationMethods();

  @override
  void dispose() {
    _emailController.text;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blackBG,
      body: SizedBox(
        height: mediaquery.height,
        width: mediaquery.width,
        child: SingleChildScrollView(
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
                        child: TextFormField(
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
                  onTap: () async {
                    // sign in function
                    // if (_formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(
                    //       backgroundColor: Colors.orangeAccent,
                    //       margin: EdgeInsets.symmetric(
                    //         horizontal: 10.0,
                    //         vertical: 10.0,
                    //       ),
                    //       behavior: SnackBarBehavior.floating,
                    //       content: Text(
                    //         "Invalid email",
                    //         style: TextStyle(
                    //           fontSize: 16.0,
                    //         ),
                    //       ),
                    //     ),
                    //   );
                    // }

                    String output = await authenticationMethods
                        .userForgotPassword(userEmail: _emailController.text);

                    if (output == "success") {
                      final snackBar = SnackBar(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.teal,
                        behavior: SnackBarBehavior.floating,
                        content: const Text("Reset link has been sent"),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      // goto login screen
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const LoginScreen(),
                        ),
                      );
                    } else {
                      final snackBar = SnackBar(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.teal,
                        behavior: SnackBarBehavior.floating,
                        content: Text(output),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
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
                        Navigator.of(context).pushReplacement(
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
      ),
    );
  }
}
