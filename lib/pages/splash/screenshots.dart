import 'package:flutter/material.dart';

class Screenshots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenshotHeight = MediaQuery.of(context).size.height * 4.5 / 5;
    final imagePadding = 20.0;

    return Column(
      children: [
        SizedBox(height: imagePadding / 2),
        Container(
          padding: EdgeInsets.all(imagePadding),
          child: Center(
            child: PhysicalModel(
              color: Colors.white,
              elevation: 8,
              child: Image.asset(
                "web/images/screenshots/automatic.png",
                height: screenshotHeight,
                semanticLabel: "Screenshot of automatic ongoing scoring",
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(imagePadding),
          child: Center(
            child: PhysicalModel(
              color: Colors.white,
              elevation: 8,
              child: Image.asset(
                "web/images/screenshots/stats.png",
                height: screenshotHeight,
                semanticLabel: "Screenshot of automatic ongoing scoring",
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(imagePadding),
          child: Center(
            child: PhysicalModel(
              color: Colors.white,
              elevation: 8, // does not work for some reason?
              child: Image.asset(
                "web/images/screenshots/log.png",
                height: screenshotHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
