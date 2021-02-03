import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/search/Payment/PaymentDone/paymentdone.dart';
import 'package:flutter/material.dart';

import '../../../../Background.dart';
import '../../../../Colors.dart';
import '../../../../NotificationsButton.dart';
import '../../home_Widgets.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        top: MediaQuery.of(context).size.height / 31,
        child: background(context),
      ),
      notificationsButton(context),
      Positioned(
        top: MediaQuery.of(context).size.height / 17,
        child: Container(
          child: Row(
            children: [
              Container(
                child: Positioned(
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
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
          child: Container(padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width - 60,
            height: MediaQuery.of(context).size.height / 1.25,
            decoration: BoxDecoration(
              color: Color(0XFFFDF2E4E6),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(12),
                        child: Icon(
                          Icons.arrow_back,
                          size: 40,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Payment Method',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFF8D5A7),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    width: 200,
                    child: ExpansionTile(
                      title: Text('Payment Method '),
                      children: [],
                    )),
                Container(
                  padding: EdgeInsets.only(top: 150),
                  child: Text(
                    'Payment Details',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    right: 50,
                    left: 50,
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'ID',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        filled: true,
                        fillColor: Color(
                          getColorHexFromStr('#F8D5A7'),
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 90,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 15,
                    right: 50,
                    left: 50,
                  ),
                  child: Center(
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        filled: true,
                        fillColor: Color(
                          getColorHexFromStr('#F8D5A7'),
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 80,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PayMentDone(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0XFFF8D5A7),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(child: Text('confirm')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
