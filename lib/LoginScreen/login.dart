import 'package:egypt_rails/Bottom_BarScreens/Custom_Navigation_Bar.dart';
import 'package:egypt_rails/SignScreen/SingUpScreen.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';
import '../Image.dart';

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
          image(context),
          Positioned(
            top: MediaQuery.of(context).size.height / 23,
            right: MediaQuery.of(context).size.width / 28,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomNavigationBar()));
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
            // left: MediaQuery.of(context).size.width / 3.3,
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
            top: MediaQuery.of(context).size.height * .23,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .4,
              ),
              width: MediaQuery.of(context).size.width * .2,
              child: Text(
                'LOGIN',
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
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
              ),
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 203, 145, .5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(120),
                  bottomLeft: Radius.circular(120),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .09,
                      left: MediaQuery.of(context).size.width * .15,
                      bottom: MediaQuery.of(context).size.height * .05,
                    ),
                    width: MediaQuery.of(context).size.width * .6,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        filled: true,
                        prefixIcon: Icon(Icons.person),
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .15,
                    ),
                    width: MediaQuery.of(context).size.width * .6,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        fillColor: Color(getColorHexFromStr('#FDF2E4')),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .15,
                      ),
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .15,
                      ),
                      child: Text(
                        'Do not have an Account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomNavigationBar()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .32,
                        vertical: 20,
                      ),
                      width: MediaQuery.of(context).size.width * .32,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
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
