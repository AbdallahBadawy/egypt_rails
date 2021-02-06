import 'package:egypt_rails/Bottom_BarScreens/HomeScreen/Home_Screen.dart';
import 'package:flutter/material.dart';

import '../Colors.dart';
import '../Image.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          image(context),
          Positioned(
            top: MediaQuery.of(context).size.height / 23,
            right: MediaQuery.of(context).size.width / 28,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(
                            getColorHexFromStr('#6D6D6D'),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.skip_next,
                        size: 45,
                        color: Color(
                          getColorHexFromStr('#6D6D6D'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 9,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .3,
              ),
              width: MediaQuery.of(context).size.width * .4,
              child: Row(
                children: [
                  Text('T',
                      style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lucida')),
                  Text(
                    'icketaway',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .2,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .29,
                vertical: 20,
              ),
              width: MediaQuery.of(context).size.width * .58,
              child: Text(
                'Creat Account',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    getColorHexFromStr('#F07611'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .31,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .24,
                        ),
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'User Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
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
                    width: MediaQuery.of(context).size.width * .7,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
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
                    width: MediaQuery.of(context).size.width * .7,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
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
                    width: MediaQuery.of(context).size.width * .7,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
