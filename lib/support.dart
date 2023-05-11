import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:website/navigation.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _emailLaunchUri = Uri(
  scheme: 'mailto',
  path: 'support@minigolflog.golf',
  queryParameters: {'subject': 'Help'},
);

class Support extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  late TapGestureRecognizer tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () => launchUrl(_emailLaunchUri); // fancy
  }

  @override
  void dispose() {
    tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigation(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Do you need support?",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Send an email to: ",
                        ),
                        TextSpan(
                          text: "support@minigolflog.com",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: tapGestureRecognizer,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
