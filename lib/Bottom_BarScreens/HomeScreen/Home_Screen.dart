import 'package:egypt_rails/Drawer/Home_Drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Container(
        child: Stack(
          children: [
            Positioned(
                top: 20,
                left: 10,
                child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                    onPressed: () {
                      _globalKey.currentState.openDrawer();
                    })),
            Positioned(
                top: 20,
                right: 20,
                child: IconButton(
                    icon: Icon(
                      Icons.notifications,
                      size: 50,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {})),
          ],
        ),
      ),
      drawer: homeDrawer(context),
    );
  }
}
