import 'package:egypt_rails/Drawer/Home_Drawer.dart';
import 'package:flutter/material.dart';
import '../../../Background.dart';
import '../../../Colors.dart';

class DestinationAlarmScreen extends StatefulWidget {
  @override
  _DestinationAlarmScreenState createState() => _DestinationAlarmScreenState();
}

class _DestinationAlarmScreenState extends State<DestinationAlarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 31,
            child: Container(
              child: background(context),
            ),
          ),
          Positioned(
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
                  },
                ),
                Text('Alarm',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 6,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .1,
                ),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height / 1.25,
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
                child: Column(
                  children: [
                    Center(
                      child: Icon(
                        Icons.alarm,
                        size: 40,
                        color: Color(getColorHexFromStr('#F07611')),
                      ),
                    ),
                    Text(
                      "Destination Alarm",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 200,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          hintText: 'Mobile',
                        ),
                      ),
                    ),
                    Text(
                      "Saved Destination Alarm",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
              )),
        ],
      ),
      drawer: homeDrawer(context),
    );
  }
}
