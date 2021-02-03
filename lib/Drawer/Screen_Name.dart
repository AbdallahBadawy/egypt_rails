import 'package:flutter/material.dart';

Widget screenName(BuildContext context, String text) {
  return Positioned(
    top: MediaQuery.of(context).size.height / 15,
    left: 5,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        Text(text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}