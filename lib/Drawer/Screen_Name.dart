import 'package:flutter/material.dart';

Widget screenName({BuildContext context, String text, Function onPressed}) {
  return Positioned(
    top: MediaQuery.of(context).size.height / 40,
    left: 5,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
            ),
            onPressed: onPressed),
        Text(text, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
