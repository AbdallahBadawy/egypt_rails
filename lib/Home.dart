import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(40),
          width: MediaQuery.of(context).size.width * .8,
          height: MediaQuery.of(context).size.height,
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
    );
  }
}
