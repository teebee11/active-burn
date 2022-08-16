import 'package:active_burn_app/active_burn_splash.dart';
import 'package:active_burn_app/authentication/sign_up.dart';
import 'package:active_burn_app/views/home.dart';
import 'package:active_burn_app/views/nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shapito',
      theme: ThemeData(
        primaryColor: const Color(0xFF6BEEEA),
        buttonColor: const Color(0xFF27D3CE),
        bottomAppBarColor: const Color.fromARGB(255, 61, 225, 220),
        backgroundColor: Color.fromARGB(255, 94, 91, 91),
        //elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle())
      ),
      home: authenticate(),
    );
  }

  bool auth() {
    bool z = true;
    if (FirebaseAuth.instance.currentUser != null) {
      z = true;
    } else {
      z = false;
    }
    return z;
  }

  //for authentication after firebase functionality completion
  authenticate() {
    bool z = auth();
    if (z == true) {
      return const NavBar();
    } else {
      return const StartUp();
    }
  }
}
