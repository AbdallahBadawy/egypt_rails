import 'package:egypt_rails/Background.dart';
import 'package:egypt_rails/Colors.dart';
import 'package:egypt_rails/Drawer/About%20Us/About_us_Widgets.dart';
import 'package:egypt_rails/NotificationsButton.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              background(context),
              notificationsButton(context),
              screenName(context),
              aboutInfo(context)
            ],
          )
        ],
      ),
    );
  }
}
