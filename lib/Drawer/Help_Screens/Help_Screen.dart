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
                  top: MediaQuery.of(context).size.height / 20,
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
                  )),
              
            ],
          )),
    );
  }
}
