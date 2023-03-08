import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/privacy.dart';
import 'package:website/splash/splash_page.dart';
import 'package:website/support.dart';

class Navigation extends StatelessWidget {
  final child;

  const Navigation({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double drawerDividerHeight = 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            MenuItem(
              text: "Home",
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/");
                    //MaterialPageRoute(builder: (context) => SplashPage()));
              },
            ),
            MenuItem(
              text: "Support",
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/support");
                    //MaterialPageRoute(builder: (context) => Support()));
              },
            ),
            MenuItem(
              text: "Privacy policy",
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/privacy");
                    //MaterialPageRoute(builder: (context) => PrivacyPolicy()));
              },
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MenuItem({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double drawerFontSize = 15;

    return ListTile(
      title: Text(text, style: TextStyle(fontSize: drawerFontSize)),
      onTap: onTap,
    );
  }
}

