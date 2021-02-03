import 'package:flutter/material.dart';

Widget background(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Image(
      image: AssetImage('assets/images/background.jpg'),
      fit: BoxFit.fill,
    ),
  );
}