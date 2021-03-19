import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/search/Payment/payment.dart';
import 'package:flutter/material.dart';
import '../../../Background.dart';
import '../home_Widgets.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              //top: MediaQuery.of(context).size.height / 31,
              child: background(context),
            ),
            //notificationsButton(context),
            Positioned(
              top: MediaQuery.of(context).size.height / 31,
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
                  Text('Search',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Positioned(
              top: mdw/ 8,
              //left: MediaQuery.of(context).size.height / 23,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .05,
                ),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * .9,
                height: MediaQuery.of(context).size.height * .8,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Text(
                              'Available trains : 24',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.65),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          textFormField(context, 'From'),
                          SizedBox(height: 10),
                          textFormField(context, 'To'),
                          //SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: MediaQuery.of(context).size.height * 0.54,
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
                                                child:
                                                    Icon(Icons.arrow_forward),
                                              ),
                                              Container(
                                                child: Text(
                                                  '04:50',
                                                ),
                                              ),
                                            ],
                                          )),
                                          Container(
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
      ),
    );
  }
}
