import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../core/const.dart';
import 'firebase_details.dart';

class FirebaseService {
  // ? Sign Up
  static Future singUp(String e, String p) async {
    try {
      UserCredential _credential = await FireBaseServiceDetail.authUser
          .createUserWithEmailAndPassword(email: e, password: p);
      User? user = _credential.user;
      await user!.sendEmailVerification();
      debugPrint("User: ${user.email}");

      return user;
    } catch (e) {
      debugPrint("User error");

      return false;
    }
  }

  // ?  Sing In
  static Future signInFunction(String e, String p) async {
    try {
      UserCredential _signedUser =
          await FireBaseServiceDetail.authUser.signInWithEmailAndPassword(
        email: e,
        password: p,
      );
      User? user = _signedUser.user;
      await user!.sendEmailVerification();
      return user;
    } catch (e) {
      return null;
    }
  }

  // ? Phone Sing In
  static String id = "";
  static Future verifySms() async {
    await FireBaseServiceDetail.authUser.verifyPhoneNumber(
        phoneNumber: "+998${Phone.phone.text}",
        verificationCompleted: (v) async {
          await FirebaseAuth.instance.signInWithCredential(v);
        },
        verificationFailed: (v) {},
        codeSent: (verificationId, resendToken) async {
          id = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          id = verificationId;
        },
        timeout: const Duration(seconds: 60));
  }
}
