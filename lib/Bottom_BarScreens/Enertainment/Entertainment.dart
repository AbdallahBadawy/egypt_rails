import 'package:egypt_rails/Background.dart';
import 'package:egypt_rails/Bottom_BarScreens/Enertainment/Entertainment_Widgets.dart';
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
        body: SafeArea(
      child: Stack(
        children: [
          background(context),
          notificationsButton(context),
          pageName(context),
          entertainment(context),
        ],
      ),
    ));
  }
}
