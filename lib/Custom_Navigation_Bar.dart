import 'dart:ffi';

import 'package:egypt_rails/Bottom_BarScreens/MyAccount/My_Account.dart';
import 'package:flutter/material.dart';

import 'Bottom_BarScreens/Enertainment/Entertainment.dart';
import 'Bottom_BarScreens/MyTrips/My_Trips.dart';
import 'Colors.dart';
import 'Bottom_BarScreens/MyTrips/Home_Screen.dart';
class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
 
      
    
  

  List pages=[
    HomeScreen(),
    MyTripsScreen(),
    EntertainmentScreen(),
    MyAccountScreen()
  ];
  int selectedPageindex=0;
  // ignore: unused_element
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPageindex],
      bottomNavigationBar: BottomNavigationBar(onTap: (index) {
                setState(() {
                  selectedPageindex = index;
                });
              },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(getColorHexFromStr('#F0DFC5')),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        currentIndex: selectedPageindex,
        items:[
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 40,),title: Text("Home",style: TextStyle(fontFamily:"Roboto",fontSize: 15),)),
      BottomNavigationBarItem(icon: Icon(Icons.badge,size: 40,),title: Text("My Trips",style: TextStyle(fontFamily:"Roboto",fontSize: 15))),
      BottomNavigationBarItem(icon: Icon(Icons.set_meal,size: 40,),title: Text("Entertainment",style: TextStyle(fontFamily:"Roboto",fontSize: 15))),
      BottomNavigationBarItem(icon: Icon(Icons.person,size: 40,),title: Text("My Account",style: TextStyle(fontFamily:"Roboto",fontSize: 15)))
      ] ,)
  
    );
  }
}