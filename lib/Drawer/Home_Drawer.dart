import 'package:egypt_rails/Drawer/About%20Us/About_Us.dart';
import 'package:egypt_rails/Drawer/Favourites/favorites.dart';
import 'package:egypt_rails/Drawer/contact%20us/contactus.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import '../Colors.dart';
import 'Help_Screens/Help_Screen.dart';
import 'MyAccount/My_Account.dart';

Widget _titleCard(
    {BuildContext context, String title, IconData icon, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      child: Row(
        children: [
          Icon(
            icon,
            size: MediaQuery.of(context).size.width / 8.5,
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
          SizedBox(height: 10),
          _titleCard(
              context: context,
              title: 'Muhamed Ahmed',
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccountScreen(),
                  ),
                );
              }),
          _titleCard(
              context: context,
              title: 'Settings',
              icon: Icons.settings,
              onTap: () {}),
          _titleCard(
              context: context,
              title: 'Share App',
              icon: Icons.share,
              onTap: () {
                Share.share('https://www.google.com');
              }),
          _titleCard(
              context: context,
              title: 'Contact Us',
              icon: Icons.call,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
              }),
          _titleCard(
              context: context,
              title: 'Rate This App',
              icon: Icons.star,
              onTap: () {}),
          _titleCard(
              context: context,
              title: 'Favourites',
              icon: Icons.favorite,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorites()));
              }),
          _titleCard(
              context: context,
              title: 'About Us',
              icon: Icons.info,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              }),
          _titleCard(
              context: context,
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
