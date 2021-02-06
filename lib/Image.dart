import 'package:flutter/material.dart';

Widget image(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Image(
      image: AssetImage('assets/images/image.jpg'),
      fit: BoxFit.cover,
    ),
  );
}
