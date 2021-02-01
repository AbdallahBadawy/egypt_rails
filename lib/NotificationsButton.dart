import 'package:flutter/material.dart';

Widget notificationsButton(BuildContext context) {
  return Positioned(
      top: 15,
      right: 25,
      child: IconButton(
          icon: Icon(
            Icons.notifications,
            size: 50,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {}));
}