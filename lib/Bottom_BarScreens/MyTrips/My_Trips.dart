import 'package:flutter/material.dart';
class MyTripsScreen extends StatefulWidget {
  @override
  _MyTripsScreenState createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: Container(width:200,height:100,child: Text("My Trips",style: TextStyle(fontSize: 30)),),),        
      
      
    );
  }
}