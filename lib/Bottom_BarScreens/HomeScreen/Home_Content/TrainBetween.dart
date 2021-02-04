import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/search/search.dart';
import 'package:egypt_rails/Drawer/Home_Drawer.dart';
import 'package:flutter/material.dart';

import '../../../Background.dart';
import '../../../Colors.dart';
import '../../../NotificationsButton.dart';
import '../home_Widgets.dart';

class TrainBetweenScreen extends StatefulWidget {
  @override
  _TrainBetweenScreenState createState() => _TrainBetweenScreenState();
}

class _TrainBetweenScreenState extends State<TrainBetweenScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  onChanged(value) {
    setState(() {
      group = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
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
                  left: 40,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width - 80,
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
                          child: Text(
                            "Train Between",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        SizedBox(height: 15),
                        textFormField(context, 'From'),
                        SizedBox(height: 10),
                        textFormField(context, 'To     '),
                        SizedBox(height: 10),
                        Container(
                          width: 120,
                          height: 30,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Color(getColorHexFromStr('#F8D5A799')),
                              borderRadius: BorderRadius.circular(8)),
                          child: DropdownButton(
                            value: newValue,
                            onChanged: (value) {
                              setState(() {
                                group = value;
                              });
                            },
                            items: [
                              DropdownMenuItem(child: Text('Flexable')),
                              DropdownMenuItem(child: Text('Fixed'))
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 12),
                            Text(
                              'Ticket Type',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 110,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ticketType(
                                  context: context,
                                  onChanged: onChanged,
                                  val: 1,
                                  text: 'VIP'),
                              ticketType(
                                  context: context,
                                  onChanged: onChanged,
                                  val: 2,
                                  text: '1st Class'),
                              ticketType(
                                  context: context,
                                  onChanged: onChanged,
                                  val: 3,
                                  text: '2nd'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Search',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
      drawer: homeDrawer(context),
    );
  }
}
