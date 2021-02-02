import 'package:flutter/material.dart';

import '../../Background.dart';

class MyTripsScreen extends StatefulWidget {
  @override
  _MyTripsScreenState createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                top: MediaQuery.of(context).size.height / 31,
                child: background(context)),
            Positioned(
              top: MediaQuery.of(context).size.height / 15,
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: 50),
                  Text("My Trips",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(width: MediaQuery.of(context).size.width / 2.27),
                  Icon(
                    Icons.settings,
                    size: 50,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 5.5,
              left: 30,
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width - 60,
                height: MediaQuery.of(context).size.height / 1.43,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Icon(
                          Icons.favorite,
                          color: Color(0XFFF07611),
                          size: 50,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            height: MediaQuery.of(context).size.height * 0.55,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 10,
                              itemBuilder: (ctx, index) {
                                return (Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Divider(
                                          indent: 2,
                                          endIndent: 2,
                                          thickness: 5,
                                          color: Color(0XFF100E0D4D),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                child: Row(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Mansora ',
                                                  ),
                                                ),
                                                Container(
                                                  child:
                                                      Icon(Icons.arrow_forward),
                                                ),
                                                Container(
                                                  child: Text(
                                                    'Tanta',
                                                  ),
                                                ),
                                              ],
                                            )),
                                            Container(
                                              child: Text(
                                                'Train 808-Upgraded',
                                                style: TextStyle(
                                                    color: Color(0XFFF07611)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                '03:40 : 04:50',
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '2.00 EPG',
                                                style: TextStyle(
                                                    color: Color(0XFFF07611)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ));
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
