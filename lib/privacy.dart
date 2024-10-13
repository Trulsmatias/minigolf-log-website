import 'package:flutter/material.dart';
import 'package:website/navigation.dart';

import 'margins.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const bodyTextStyle = TextStyle(fontSize: 18, fontFamily: "Roboto");
    final leftMargin = logoLeftMargin(context);

    return Navigation(
      child: SafeArea(
        child: SelectionArea(
          child: Center(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: leftMargin),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Privacy policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                Text(
                  "To handle sales, we have integrated service from a third-party provider in the app. This third-party provider sets up an anonymous payment profile for any paying user. This profile contains:",
                  style: bodyTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "\n* Country, e.g. “Norway"
                    "\n* What version of the app the user is using"
                    "\n* How much money they have paid in the app"
                    "\n* When the app was most recently opened"
                    "\n* That they have been a user since this given date"
                    "\n* The platform they used most recently (e.g. iOS or Android) – and this will always be the same platform, since the app do not have specific user profiles, but utilizes the Apple/Google profiles that the phone already is signed in to. Thus, the user will have to subscribe anew, should they want to the subscription on the other platform."
                    "\n* The phone’s language"
                    "\n* The last seen SDK version"
                    "\n* Customer history, i.e. when a sale was made + history of when then user first used the app and when they used it most recently."
                    "\n* These profiles are anonymous, and none of the data can be connected with the user."
                    "\n",
                    style: bodyTextStyle,
                  ),
                ),
                Text(
                  "Should the user want to delete their data and their profile, "
                  "they can send an email using the \"Delete my data\" button "
                  "in the app under \"Other settings\". This email contains "
                  "the user’s anonymous ID, making it so it is known which "
                  "user to delete from the apps third party service. Deleting "
                  "the user may make the previously payed content unavailable "
                  "and the user may have to pay for the content again.",
                  style: bodyTextStyle,
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
