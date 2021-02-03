import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../Background.dart';
import '../../../../../NotificationsButton.dart';
import '../../../home_Widgets.dart';

class PayMentDone extends StatefulWidget {
  @override
  _PayMentDoneState createState() => _PayMentDoneState();
}

class _PayMentDoneState extends State<PayMentDone> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Stack(children: [
      Positioned(
        top: MediaQuery.of(context).size.height / 31,
        child: background(context),
      ),
      Positioned(
        child: notificationsButton(context),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 17,
        child: Container(
          child: Row(
            children: [
              Container(
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              appName(context),
            ],
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 6,
        left: MediaQuery.of(context).size.height / 23,
        child: Container(
          
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .7,
          decoration: BoxDecoration(
            color: Color(0XFFFDF2E4E6),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Icon(
                  Icons.check_circle_outline,
                  color: Color(0XFFF07611),
                  size: 90,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Payment is done',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFF07611)),
                ),
              ),
            ],
          ),
        ),
      ),
    ])));
  }
}
