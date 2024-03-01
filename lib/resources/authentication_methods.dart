import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationMethods {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // sign up
  Future<String> signUpUser({
    required String userName,
    required String userEmail,
    required String userPassword,
  }) async {
    userName.trim();
    userEmail.trim();
    userPassword.trim();

    String output = "something went wrong";

    if (userName != "" && userEmail != "" && userPassword != "") {
      try {
        await firebaseAuth.createUserWithEmailAndPassword(
          email: userEmail,
          password: userPassword,
        );
        output = "success";
      } on FirebaseAuthException catch (e) {
        output = e.message.toString();
      }
    } else {
      output = "Please fill up everything";
    }
    return output;
  }

  // sign in
  Future<String> signInUser({
    required String userEmail,
    required String userPassword,
  }) async {
    userEmail.trim();
    userPassword.trim();

    String output = "something went wrong";

    if (userEmail != "" && userPassword != "") {
      try {
        await firebaseAuth.signInWithEmailAndPassword(
          email: userEmail,
          password: userPassword,
        );
        output = "success";
      } on FirebaseAuthException catch (e) {
        output = e.message.toString();
      }
    } else {
      output = "Please fill up everything";
    }
    return output;
  }

  // forgot password
  Future<String> userForgotPassword({required String userEmail}) async {
    userEmail.trim();

    String output = "Something went wrong..";

    if (userEmail != "") {
      try {
        await firebaseAuth.sendPasswordResetEmail(email: userEmail);
        output = "success";
      } on FirebaseAuthException catch (e) {
        output = e.message.toString();
      }
    } else {
      output = "Please fill up everything";
    }
    return output;
  }

  // --------------------------------------------
  // checking if the user is valid or not
  // result : failed to get those data from firebase
  // because of it's security reasons.

  // forgot password
  // Future<String> userForgotPassword({required String userEmail}) async {
  //   userEmail.trim();

  //   String output = "Something went wrong..";

  //   if (userEmail != "") {
  //     bool isEmailValid = await doesEmailExistOrNot(userEmail: userEmail);
  //     print(isEmailValid);
  //     if (isEmailValid) {
  //       //   try {
  //       //   await firebaseAuth.sendPasswordResetEmail(email: userEmail);
  //       //   output = "success";
  //       // } on FirebaseAuthException catch (e) {
  //       //   output = e.message.toString();
  //       // }
  //       log("email is valid");
  //     } else {
  //       log("email is invalid...");
  //     }
  //   } else {
  //     output = "Please fill up everything";
  //   }
  //   return output;
  // }

  // check if the email is present or not in firebase
  Future<bool> doesEmailExistOrNot({required String userEmail}) async {
    try {
      var isEmailExists =
          // ignore: deprecated_member_use
          await firebaseAuth.fetchSignInMethodsForEmail(userEmail);

      List<String> toList = isEmailExists.toList();
      print(toList);

      print(isEmailExists);
      return isEmailExists.isNotEmpty;
    } catch (e) {
      // print error while cheking email

      log(e.toString());
      return false;
    }
  }
}
