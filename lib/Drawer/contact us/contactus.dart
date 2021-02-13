import 'package:flutter/material.dart';
import '../../Background.dart';
import '../../Colors.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 31,
            child: background(context),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 14,
              left: MediaQuery.of(context).size.width / 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 5.5,
            left: 30,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 60,
              height: MediaQuery.of(context).size.height / 1.31,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Column(children: [
                Container(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 0),
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Image(
                        image: AssetImage('assets/images/contact2x.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text("-- Send Message",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextField(
                          autocorrect: false,
                          textInputAction: TextInputAction.send,
                          maxLines: 6,
                          decoration: InputDecoration(
                            hintText: 'leave your massage here',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Container(
                              margin: EdgeInsets.only(top: 100),
                              child: Icon(
                                Icons.send_rounded,
                                size: 25,
                                color: Color(
                                  getColorHexFromStr('#F07611'),
                                ),
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text("-- Send FeedBack",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextField(
                            autocorrect: false,
                            textInputAction: TextInputAction.send,
                            maxLines: 6,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'leave your FeadBack here',
                              fillColor: Colors.white,
                              suffixIcon: Container(
                                margin: EdgeInsets.only(top: 100),
                                child: Icon(
                                  Icons.send_rounded,
                                  size: 25,
                                  color: Color(
                                    getColorHexFromStr('#F07611'),
                                  ),
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none),
                            )),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
