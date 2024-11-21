import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double widthRatio = MediaQuery.of(context).size.width * 3.5 / 9;

    return Image.asset(
      "web/images/minigolflog_langlogo.png",
      frameBuilder: (context, child, int? frame, wasSynchronouslyLoaded) {
        LayoutChangedNotification().dispatch(context);
        return child;
      },
      width: widthRatio,
    );
  }
}


/*
ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 14 / 20,
          ),
 */