// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz/screens/user_account/login_screen.dart';

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();

            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (ctx) => const LoginScreen(),
                ),
                (route) => false);
          },
          icon: const Icon(Icons.power_settings_new),
          label: const Text("Logout"),
        ),
      ),
    );
  }
}
