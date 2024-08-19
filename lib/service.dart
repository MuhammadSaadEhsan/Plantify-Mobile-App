// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/navbar.dart';

class AppServices {
  signup(context, emailtext, passtxt) async {
    try {
      // ignore: unused_local_variable
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailtext,
        password: passtxt,
      );

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Navbar(),
          ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  signin(context, emailtext, passtxt) async {
    try {
      // ignore: unused_local_variable
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailtext, password: passtxt);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Navbar(),
          ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
