import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _appStoreLaunchUri = Uri(
  scheme: 'https',
  host: "apps.apple.com",
  path: 'no/app/minigolf-log/id1551099255',
);

final Uri _googlePlayLaunchUri = Uri(
  scheme: "https",
  host: "play.google.com",
  path: "store/apps/details",
  queryParameters: {"id": "com.tmt.minigolf"}
);

class Stores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Ink(
                //width: widthRatio / 5,
                //height: widthRatio / 5,
                decoration: const ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                child: IconButton(
                  iconSize: 35, //- (widthRatio / 1000000), // 40
                  color: Colors.white,
                  icon: Icon(SimpleIcons.apple),
                  onPressed: () {
                    launchUrl(_appStoreLaunchUri);
                  },
                ),
              ),
            ),
            Ink(
              //width: widthRatio / 5,
              //height: widthRatio / 5,
              decoration: const ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              child: IconButton(
                iconSize: 35, //- (widthRatio / 1000000), // 40
                color: Colors.white,
                icon: Icon(SimpleIcons.googleplay),
                onPressed: () {
                  launchUrl(_googlePlayLaunchUri);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
