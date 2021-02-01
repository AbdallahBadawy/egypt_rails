import 'package:egypt_rails/Colors.dart';
import 'package:egypt_rails/Drawer/About%20Us/About_Us.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'Help_Screens/Help_Screen.dart';

Widget _titleCard({String title, IconData icon, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      child: Row(
        children: [
          Icon(
            icon,
            size: 45,
            color: Color(getColorHexFromStr('#F07611')),
          ),
          SizedBox(width: 20),
          Text(title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
        ],
      ),
    ),
  );
}

Widget homeDrawer(BuildContext context) {
  return Drawer(
    child: Container(
      color: Color(getColorHexFromStr('#F0DFC5')),
      child: ListView(
        children: [
          SizedBox(height: 15),
          _titleCard(title: 'Muhamed Ahmed', icon: Icons.person, onTap: () {}),
          _titleCard(title: 'Settings', icon: Icons.settings, onTap: () {}),
          _titleCard(
              title: 'Share App',
              icon: Icons.share,
              onTap: () {
                Share.share('https://www.google.com');
              }),
          _titleCard(title: 'Contact Us', icon: Icons.call, onTap: () {}),
          _titleCard(title: 'Rate This App', icon: Icons.star, onTap: () {}),
          _titleCard(title: 'Favourites', icon: Icons.favorite, onTap: () {}),
          _titleCard(
              title: 'About Us',
              icon: Icons.info,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              }),
          _titleCard(
              title: 'Help',
              icon: Icons.help_outline,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpScreen()));
              }),
        ],
      ),
    ),
  );
}
