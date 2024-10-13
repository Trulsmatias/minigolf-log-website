import 'package:flutter/material.dart';
import 'package:website/margins.dart';
import 'package:website/navigation.dart';
import 'package:website/splash/about.dart';
import 'package:website/splash/logo_image.dart';
import 'package:website/splash/logo_text.dart';
import 'package:website/splash/screenshots.dart';
import 'package:website/splash/stores.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double widthRatio = MediaQuery.of(context).size.width * 4 / 9;
    return Navigation(
      child: ListView(
        children: [
          Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  //alignment: Alignment.bottomLeft,
                  children: [
                    Positioned(
                      top: 0,
                      //bottom: -250,
                      left:  logoLeftMargin(context),
                      child: LogoImage(),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.width / 20,
                      right: MediaQuery.of(context).size.width / 20,
                      child: LogoText(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.width * 4 / 10),
                        Stores(),
                        About(),
                      ],
                    ),
                  ],
                ),
                Screenshots()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Text(
//                 "Minigolf Log",
//                 style: TextStyle(
//                   fontSize: 60,
//                   //fontStyle:
//                 ),
//                 textAlign: TextAlign.center,
//               ),
