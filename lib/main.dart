import 'package:flutter/material.dart';
import 'package:website/pages/delete_user_page.dart';

import 'pages/privacy_page.dart';
import 'pages/splash/splash_page.dart';
import 'pages/support_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minigolf Log',
      routes: {
        "/": (context) => SplashPage(),
        "/support": (context) => SupportPage(),
        "/privacy": (context) => PrivacyPolicyPage(),
        "/deleteuser": (context) => DeleteUserPage(),
      },
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 52, 199, 89, ),
        fontFamily: "Kankin",
        scaffoldBackgroundColor: Colors.white,
        //primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      //home: SplashPage(),
    );
  }
}
