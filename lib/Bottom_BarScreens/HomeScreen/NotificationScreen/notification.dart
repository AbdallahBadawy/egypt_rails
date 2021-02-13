import 'package:flutter/material.dart';
import '../../../Background.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        top: MediaQuery.of(context).size.height / 31,
        child: background(context),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 15,
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Text("Notification",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 6,
        left: MediaQuery.of(context).size.height / 20,
        child: Container(
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height * .8,
          decoration: BoxDecoration(
            color: Color(0XFFF6ECDF),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Color(0XFFF07611),
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(25))),
              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 310,
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (ctx, index) {
                        return (Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  "RailWay take an important new decision train 301 will be have an hour late",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      '2 hours left',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(15),
                                    child: Icon(
                                      Icons.delete,
                                      color: Color(0XFFF07611),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Divider(
                                  indent: 2,
                                  endIndent: 2,
                                  thickness: 5,
                                  color: Color(0XFF100E0D4D),
                                ),
                              ),
                            ],
                          ),
                        ));
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}
