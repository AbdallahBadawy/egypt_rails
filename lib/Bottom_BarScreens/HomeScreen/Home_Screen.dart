import 'package:egypt_rails/Background.dart';
import 'package:egypt_rails/Drawer/Home_Drawer.dart';
import 'package:egypt_rails/NotificationsButton.dart';
import 'package:flutter/material.dart';
import 'home_Widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            background(context),
            drawerMenu(
                context: context,
                onPressed: () {
                  _globalKey.currentState.openDrawer();
                }),
            notificationsButton(context),
            appName(context),
            trainLines(
                context: context,
                onChanged: (value) {
                  setState(() {
                    group = value;
                  });
                },
                dropButtonOnChanged: (value) {
                  setState(() {
                    newValue = value;
                  });
                }),
          ],
        ),
      ),
      drawer: homeDrawer(context),
    );
  }
}
