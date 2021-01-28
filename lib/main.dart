import 'package:flutter/material.dart';

import 'Colors.dart';
import 'Bottom_BarScreens/Custom_Navigation_Bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).primaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // background color
        primaryColor: Color(getColorHexFromStr('#F07611')),
        // red color used in splash
        accentColor: Color(getColorHexFromStr('#FDF2E4E6')),
      ),
      home: CustomNavigationBar()
      ,
    );
  }
}