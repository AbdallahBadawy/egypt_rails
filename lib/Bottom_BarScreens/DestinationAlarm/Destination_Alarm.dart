import 'package:flutter/material.dart';

import '../../Background.dart';
import '../../Colors.dart';
import '../../Drawer/Home_Drawer.dart';
import '../../NotificationsButton.dart';
import '../HomeScreen/home_Widgets.dart';
import '../HomeScreen/home_Widgets.dart';
import '../HomeScreen/search/search.dart';

class DestinationAlarmScreen extends StatefulWidget {
  @override
  _DestinationAlarmScreenState createState() => _DestinationAlarmScreenState();
}

class _DestinationAlarmScreenState extends State<DestinationAlarmScreen> {
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
              left: 40,
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 80,
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
                    Center(
                      child: Icon(
                        Icons.alarm,
                        size: 40,
                        color: Color(getColorHexFromStr('#F07611')),
                      ),
                    ),
                    Text(
                      "Destination Alarm",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 200,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          hintText: 'Mobile',
                        ),
                      ),
                    ),
                    Text(
                      "Saved Destination Alarm",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )),
        ],
      ),
      drawer: homeDrawer(context),
    );
  }
}
