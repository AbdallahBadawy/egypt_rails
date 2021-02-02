import 'package:flutter/material.dart';

import 'Background.dart';
import 'NotificationsButton.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        background(context),
        notificationsButton(context),
      ],
    ));
  }
}
