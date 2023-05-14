import 'package:flutter/material.dart';
import 'package:website/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double leftPadding = logoLeftMargin(context) + MediaQuery.of(context).size.width / 12.5;
    return Container(
      color: Theme.of(context).primaryColor, //Colors.green,
      width: MediaQuery.of(context).size.width,
      child: SelectionArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(leftPadding, 20, 8, 0),
              child: Text(
                "Your digital minigolf scorecard.\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(leftPadding, 0, 25, 20),
              child: Text(
                "Use the app instead of a piece of paper. Then share the game with the other players!\n\n"
                "- The score is calculated instantly while you play (optional)\n"
                "- Customize holes' names, add an extra hole or delete it to fit your course\n"
                "- The games are saved to look back on later\n"
                "- Share the game with others\n"
                "- Statistics! Who has the most hole in ones? Or who is the most consistent?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
