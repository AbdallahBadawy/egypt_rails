import 'package:flutter/material.dart';

import 'Colors.dart';

import 'SignScreen/SingUpScreen.dart';

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
        fontFamily: 'Roboto',
      ),
      home: SignUpScreen(),
    );
  }
}
