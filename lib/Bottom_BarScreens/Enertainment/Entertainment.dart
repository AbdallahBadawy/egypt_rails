import 'package:egypt_rails/Background.dart';
import 'package:egypt_rails/Bottom_BarScreens/Enertainment/Entertainment_Widgets.dart';
import 'package:egypt_rails/Drawer/Screen_Name.dart';
import 'package:egypt_rails/NotificationsButton.dart';
import 'package:flutter/material.dart';

class EntertainmentScreen extends StatefulWidget {
  @override
  _EntertainmentScreenState createState() => _EntertainmentScreenState();
}

class _EntertainmentScreenState extends State<EntertainmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
<<<<<<< HEAD
        children: 
    [Stack(
  
            children: 
  
  [
          background(context),
  notificationsButton(context),
  screenName(context, 'Entertainment'),
          entertainment(context),
  
  ],
  
=======
        children: [
          Stack(
            children: [
              background(context),
              notificationsButton(context),
              screenName(context, 'Entertainment'),
              entertainment(context),
            ],
>>>>>>> 925ae09867f839f53537941306b857683770d392
          ),
        ],
      ),
    );
  }
}
