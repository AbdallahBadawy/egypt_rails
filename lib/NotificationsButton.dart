import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/NotificationScreen/notification.dart';
import 'package:flutter/material.dart';

Widget notificationsButton(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height / 31,
    right: 25,
    child: IconButton(
        icon: Icon(
          Icons.notifications,
          size: MediaQuery.of(context).size.width / 7.4,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NotificationScreen(),
            ),
          );
        }),
  );
}
