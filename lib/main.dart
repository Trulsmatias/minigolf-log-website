import 'package:flutter/material.dart';
import 'package:website/privacy.dart';
import 'package:website/splash/splash_page.dart';
import 'package:website/support.dart';

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
        "/support": (context) => Support(),
        "/privacy": (context) => PrivacyPolicy(),
      },
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 52, 199, 89, ),
        fontFamily: "Kankin",
        //primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      //home: SplashPage(),
    );
  }
}
