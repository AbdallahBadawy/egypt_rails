import 'package:egypt_rails/NotificationsButton.dart';
import 'package:flutter/material.dart';

import '../../Background.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height / 31,
          child: background(context),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 15,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, size: 35),
                ),
                Text("Help",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(width: MediaQuery.of(context).size.width / 1.77),
                notificationsButton(context)
              ],
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 6.5,
            left: 30,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(50)),
              child: ListView(children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60)),
                    child: Icon(
                      Icons.help_outline_rounded,
                      size: 55,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: Text("-- How to book Ticket ?",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                InkWell(
                    onTap: () {},
                    child: Text("-- How to cancle Ticket ?",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                InkWell(
                    onTap: () {},
                    child: Text("-- How to search for Train ?",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                InkWell(
                    onTap: () {},
                    child: Text("-- How to pay for the Ticket ?",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                InkWell(
                    onTap: () {},
                    child: Text("-- How to view Live Train ?",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor)))
              ]),
            ))
      ],
    ));
  }
}
