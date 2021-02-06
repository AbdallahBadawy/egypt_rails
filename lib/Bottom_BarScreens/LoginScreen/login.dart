import 'package:flutter/material.dart';

import '../../Colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 330, top: 15),
            child: Container(
              width: 90,
              height: 50,
              color: Colors.black,
            ),
          ),
          Column(
            children: [
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('T',
                        style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lucida')),
                    Text('icketaway',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(getColorHexFromStr('#F07611')),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 350,
                height: 400,
                color: Color(getColorHexFromStr('#FDF2E4E6')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
