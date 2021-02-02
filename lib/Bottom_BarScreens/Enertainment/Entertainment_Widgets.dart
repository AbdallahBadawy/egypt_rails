import 'package:egypt_rails/Colors.dart';
import 'package:flutter/material.dart';

Widget entertainment(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 70,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(60),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 8,
                blurRadius: 8,
                offset: Offset(6, 6),
              ),
            ],
          ),
          child: Image(
            width: 50,
            height: 50,
            image: AssetImage('assets/images/Entertainment.png'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Videos',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              return InkWell(onTap: () {}, child: videos());
            },
          ),
        ),
      ],
    ),
  );
}

Widget videos() {
  return Column(
    children: [
      Container(
        width: 270,
        height: 160,
        margin: EdgeInsets.only(top: 20, bottom: 20, right: 15),
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                  'https://elcaptain.dostor.org/upload/photo/news/12/8/600x338o/706.jpg?q=2'),
              fit: BoxFit.cover,
            )),
      ),
      Text(
        'Afsha goal in Champions League final',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
