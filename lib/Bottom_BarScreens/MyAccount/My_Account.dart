import 'package:flutter/material.dart';

import '../../Background.dart';
import '../../Colors.dart';
import '../../Drawer/Home_Drawer.dart';
import '../../NotificationsButton.dart';
import '../HomeScreen/home_Widgets.dart';

class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  onChanged(value) {
    setState(() {
      group = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          background(context),
          drawerMenu(
              context: context,
              onPressed: () {
                _globalKey.currentState.openDrawer();
              }),
          notificationsButton(context),
          appName(context),
          Positioned(
              top: MediaQuery.of(context).size.height / 8,
              left: 20,
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 40,
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      )
                    ],
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 150,
                      child: Text(
                        'Sabry Mohamed',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 240,
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Positioned(
                      top: 280,
                      left: 240,
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 2,
                      child: Container(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
      drawer: homeDrawer(context),
    );
  }
}
