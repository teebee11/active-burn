import 'package:active_burn_app/authentication/sign_in.dart'
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
Future<User?> createAccount(String name, String email, String password) async {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  try {
    UserCredential userCrendetial = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    userCrendetial.user!.updateDisplayName(name);

    await _firestore.collection('users').doc(_auth.currentUser!.uid).set({
      "name": name,
      "email": email,
      "status": "Unavalible",
      "uid": _auth.currentUser!.uid,
    });

    return userCrendetial.user;
  } catch (e) {
    Fluttertoast.showToast(msg: "SignUp failed");
    return null;
  }
}

Future<User?> logIn(String email, String password) async {
  // ignore: no_leading_underscores_for_local_identifiers
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .get()
        .then((value) => userCredential.user!.updateDisplayName(value['name']));

    return userCredential.user;
  } catch (e) {
    Fluttertoast.showToast(msg: "Login failed");
    return null;
  }
}

Future logOut(BuildContext context) async {
  try {
    await _auth.signOut().then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => signin()));
    });
  } catch (e) {
    throw Exception(e.toString());
  }
}

