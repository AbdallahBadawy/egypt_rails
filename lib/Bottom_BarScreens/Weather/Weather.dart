import 'package:egypt_rails/Drawer/Screen_Name.dart';
import 'package:flutter/material.dart';

import '../../Background.dart';
import '../../Colors.dart';

class MyWeatherScreen extends StatefulWidget {
  @override
  _MyWeatherScreenState createState() => _MyWeatherScreenState();
}

class _MyWeatherScreenState extends State<MyWeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 31,
            child: background(context),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 12,
            left: MediaQuery.of(context).size.width / 15,
            child: Text(
                  'Weather',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/Weather2x.png'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 80,
                        ),
                        filled: true,
                        fillColor: Color(
                          getColorHexFromStr('#F8D5A7'),
                        ),
                        hintText: 'mansoura',
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(
                            getColorHexFromStr('#6D6D6D'),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
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
