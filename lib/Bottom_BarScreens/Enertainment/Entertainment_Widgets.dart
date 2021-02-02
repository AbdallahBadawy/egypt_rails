import 'package:egypt_rails/Colors.dart';
import 'package:flutter/material.dart';

Widget entertainment(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 70,
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    margin: EdgeInsets.only(left: 35, right: 35, top: 80, bottom: 10),
    decoration: BoxDecoration(
        color: Color(getColorHexFromStr('#F6ECDF')),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 8,
            blurRadius: 8,
            offset: Offset(12, 12),
          )
        ]),
    child: Text("Entertainment", style: TextStyle(fontSize: 30)),
  );
}
