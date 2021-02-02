import 'package:egypt_rails/Colors.dart';
import 'package:flutter/material.dart';



Widget _info(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
  );
}

Widget aboutInfo(BuildContext context) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width - 70,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        margin: EdgeInsets.only(left: 35, right: 35, top: 80, bottom: 10),
        decoration: BoxDecoration(
            color: Color(getColorHexFromStr('#F6ECDF')),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 8,
                blurRadius: 8,
                offset: Offset(12, 12),
              )
            ]),
        child: Column(
          children: [
            Image(
              width: 80,
              height: 80,
              image: AssetImage('assets/images/About Us.png'),
            ),
            SizedBox(height: 20),
            _info(
                'As the most global app on this list, Ticketaway is a great resource for travelers.'),
            SizedBox(height: 25),
            _info(
                'while you can’t actually book train tickets on Ticketaway, you can access a wealth of information about the options.'),
            SizedBox(height: 25),
            _info(
                'The app will provide directions and suggest routes based on real-time data, so you know exactly how to get to a station, or when you’re expected to arrive at your final destination.'),
            SizedBox(height: 25),
            _info(
                'You can also see reviews from previous users, and get updates about delays and service changes. Maps of stations, routes, and lines are available for offline use, and the app is currently available in 2 languages.'),
            SizedBox(height: 25),
          ],
        ),
      ),
    ],
  );
}
