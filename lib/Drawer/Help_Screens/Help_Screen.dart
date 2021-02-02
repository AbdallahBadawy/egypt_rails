import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage("assets/images/background.jpg"),
            fit: BoxFit.fill,
          )),
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height / 25,
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, size: 50),
                    Text("Help",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold)),
                    SizedBox(width: MediaQuery.of(context).size.width / 1.77),
                    Icon(
                      Icons.settings,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 8,
                  left: 30,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width - 60,
                    height: MediaQuery.of(context).size.height / 1.2,
                    decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60)),
                          child: Icon(
                            Icons.help_outline_rounded,
                            size: 55,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Text("-- How to book Ticket ?",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Text("-- How to book Ticket ?",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Text("-- How to book Ticket ?",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Text("-- How to book Ticket ?",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),
                      Text("-- How to book Ticket ?",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor))
                    ]),
                  ))
            ],
          )),
    );
  }
}
