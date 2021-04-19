import 'package:flutter/material.dart';

class Screenshots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenshotHeight = MediaQuery.of(context).size.height * 4.5 / 5;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(50),
          child: Center(
            child: PhysicalModel(
              color: Colors.white,
              elevation: 8,
              child: Image.asset(
                "web/images/screenshots/automatic.jpeg",
                height: screenshotHeight,
                //width: MediaQuery.of(context).size.height * (4 / 5) * (1242 / 2688),
                semanticLabel: "Screenshot of automatic ongoing scoring",
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(50),
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
