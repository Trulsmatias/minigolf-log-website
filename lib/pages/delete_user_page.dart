import 'package:flutter/material.dart';
import 'package:website/navigation.dart';

import 'margins.dart';

class DeleteUserPage extends StatelessWidget {
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
                    "How to delete user",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                Text(
                  "To handle sales, we have integrated service from a third-party provider in the app. This third-party provider sets up an anonymous payment profile for any paying user."
                  "If you want to delete all information regarding this user, in the app go to settings, then other settings and press the \"Delete my data\" button. This will create an email containing"
                  " your anonymous user ID where you can ask to get your data deleted. If you have not bought anything an ID will still be shown even though no payment profile has been created. "
                  "When the email is sent the request will be handled manually and you will get an update as soon as you data has been deleted."
                  "This action may prevent you from accessing the payed parts of the app and you may have to purchase it again."
                  "Oh, well. Welcome back at a later date!",
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
