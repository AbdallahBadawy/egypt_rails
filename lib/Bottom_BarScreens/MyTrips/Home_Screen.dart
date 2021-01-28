import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Container(height: 200,width: 100,child: Center(child: Text("Home",style: TextStyle(fontSize: 30),)),)),
      
    );
  }
}