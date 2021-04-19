import 'dart:math';

import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width * 4 / 9;

    double minigolfFontSize = widthRatio / 4;
    double logFontSize = minigolfFontSize * 0.8;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              fontFamily: "Kankin",
              fontSize: minigolfFontSize, // 100
              color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: "M",
              style: TextStyle(fontFamily: "Ashby"),
            ),
            TextSpan(text: "inigolf\n"),
            TextSpan(
              text: "  Log",
              style: TextStyle(
                fontSize: logFontSize,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// for the s curve for font
/*double minFontSize = 40;
    double ratio = 90;
    double steepness = -0.02;
    double xShift = 350;

    double minigolfFontSize = minFontSize +
        (ratio / (1 + pow(2.7, steepness * (widthRatio - xShift))));
     */
