import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('weather'),
      centerTitle: true,backgroundColor:Color.fromRGBO(247, 203, 145, 1) ,
      leading: Icon(Icons.arrow_back),),
      
    );
  }
}