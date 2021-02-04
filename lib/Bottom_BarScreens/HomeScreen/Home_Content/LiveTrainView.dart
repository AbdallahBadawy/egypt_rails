import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Background.dart';
import '../../../Colors.dart';
import '../../../NotificationsButton.dart';
import '../home_Widgets.dart';

class LiveTrainViewScreen extends StatefulWidget {
  @override
  _LiveTrainViewScreenState createState() => _LiveTrainViewScreenState();
}

class _LiveTrainViewScreenState extends State<LiveTrainViewScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: Colors.white,
        body: ListView(children: [
          Stack(children: [
            background(context),
            drawerMenu(
                context: context,
                onPressed: () {
                  _globalKey.currentState.openDrawer();
                }),
            notificationsButton(context),
            appName(context),
            Positioned(
                top: MediaQuery.of(context).size.height / 8,
                left: 30,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
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
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "Live Train View",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Select Train",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      textFormField(context, 'From'),
                      SizedBox(height: 10),
                      textFormField(context, 'To     '),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Trip Time",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: 30,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: '4:30',
                                  contentPadding: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 10),
                                  filled: true,
                                  fillColor:
                                      Color(getColorHexFromStr('#F8D5A799')),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                              target: LatLng(31.0454, 31.3885), zoom: 25),
                        ),
                      )
                    ],
                  ),
                ))
          ])
        ]));
  }
}
