import 'package:flutter/material.dart';
import 'package:website/navigation.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigation(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Privacy policy",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
              Text(
                "The app does not collect any data.\n\n"
                //"This policy is effective as of 13 February 2021."
                ,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
