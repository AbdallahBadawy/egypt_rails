import 'package:flutter/material.dart';

Widget notificationsButton(BuildContext context) {
  return Positioned(
      top: 15,
      right: 25,
      child: IconButton(
          icon: Icon(
            Icons.notifications,
            size: MediaQuery.of(context).size.width / 7.4,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {}));
}