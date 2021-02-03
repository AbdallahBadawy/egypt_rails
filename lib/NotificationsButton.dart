import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/NotificationScreen/notification.dart';
import 'package:flutter/material.dart';

Widget notificationsButton(BuildContext context) {
  return Positioned(
    top: 5,
    right: 15,
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
