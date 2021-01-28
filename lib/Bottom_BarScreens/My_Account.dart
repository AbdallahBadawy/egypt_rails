import 'package:flutter/material.dart';
class MyAccountScreen extends StatefulWidget {
  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(width:200,height:100,child: Text("My Account",style: TextStyle(fontSize: 30)),),),
      
    );
  }
}