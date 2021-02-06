import 'package:egypt_rails/Bottom_BarScreens/DestinationAlarm/Destination_Alarm.dart';
import 'package:egypt_rails/Bottom_BarScreens/LoginScreen/login.dart';
import 'package:egypt_rails/Bottom_BarScreens/MyAccount/My_Account.dart';
import 'package:egypt_rails/Bottom_BarScreens/SignScreen/SingUpScreen.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).primaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // background color
        primaryColor: Color(getColorHexFromStr('#F07611')),
        // red color used in splash
        accentColor: Color(getColorHexFromStr('#FDF2E4E6')),
        fontFamily: 'Roboto',
      ),
      home: LoginScreen(),
    );
  }
}
