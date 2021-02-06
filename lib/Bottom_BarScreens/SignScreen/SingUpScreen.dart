import 'package:egypt_rails/Image.dart';
import 'package:flutter/material.dart';

import '../../Background.dart';
import '../../Colors.dart';
import '../../Drawer/Home_Drawer.dart';
import '../../NotificationsButton.dart';
import '../HomeScreen/home_Widgets.dart';
import '../HomeScreen/home_Widgets.dart';
import '../HomeScreen/search/search.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  onChanged(value) {
    setState(() {
      group = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              appName(context),
              Text(
                'Creat Account',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 102,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'User Name',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 102,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'E-mail ',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 102,
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 102,
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Re-Password',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 102,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(getColorHexFromStr('#FDF2E4E6')),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    hintText: 'Mobile',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  child: Text(
                'I have an Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
              SizedBox(
                height: 100,
              ),
              Container(
                  child: Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )),
            ],
          )
        ],
      ),
    );
  }
}
