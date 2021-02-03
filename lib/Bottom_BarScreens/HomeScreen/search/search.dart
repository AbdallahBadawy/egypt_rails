import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/search/Payment/payment.dart';
import 'package:flutter/material.dart';

import '../../../Background.dart';
import '../../../Colors.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                Icon(Icons.arrow_back, size: 50),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6,
            left: MediaQuery.of(context).size.height / 23,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height / 1.25,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(50)),
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
                        height: MediaQuery.of(context).size.height * 0.64,
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
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                '03:40 ',
                                              ),
                                            ),
                                            Container(
                                              child: Icon(Icons.arrow_forward),
                                            ),
                                            Container(
                                              child: Text(
                                                '04:50',
                                              ),
                                            ),
                                          ],
                                        )),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .28,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Center(
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      child: Image(
                                                        image: AssetImage(
                                                            'assets/images/fav.png'),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Payment(),
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(40),
                                                        ),
                                                        child: Image(
                                                          image: AssetImage(
                                                              'assets/images/cash-payment.png'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Train 808-Upgraded',
                                            style: TextStyle(
                                              color: Color(0XFFF07611),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Daily',
                                            style: TextStyle(
                                              color: Color(0XFFF07611),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'price',
                                            style: TextStyle(
                                              color: Color(0XFFF07611),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Route (6 Station)',
                                            style: TextStyle(
                                              color: Color(0XFFF07611),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '2.00 EPG',
                                            style: TextStyle(
                                              color: Color(0XFFF07611),
                                            ),
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
        ],
      ),
    );
  }
}
