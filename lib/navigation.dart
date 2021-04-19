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
    double drawerFontSize = 15;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            ListTile(
              tileColor: Theme.of(context).primaryColor,
              title: Text("Home", style: TextStyle(fontSize: drawerFontSize)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/");
                    //MaterialPageRoute(builder: (context) => SplashPage()));
              },
            ),
            Divider(
              height: drawerDividerHeight,
              color: Colors.white,
            ),
            ListTile(
              tileColor: Theme.of(context).primaryColor,
              title: Text("Support", style: TextStyle(fontSize: drawerFontSize)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/support");
                    //MaterialPageRoute(builder: (context) => Support()));
              },
            ),
            Divider(
              height: drawerDividerHeight,
              color: Colors.white,
            ),
            ListTile(
              tileColor: Theme.of(context).primaryColor,
              title: Text("Privacy policy", style: TextStyle(fontSize: drawerFontSize)),
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
