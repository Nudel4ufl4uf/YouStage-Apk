import 'package:flutter/material.dart';

import '../../main.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar();
  Color mainColor = Colors.pink[600];

  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            iconSize: 100,
            highlightColor: mainColor,
            hoverColor: mainColor,
            icon: Text('Spotlight',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          IconButton(
            iconSize: 100,
            highlightColor: mainColor,
            hoverColor: mainColor,
            icon: Text('Kategorien',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Categorie');
            },
          ),
          IconButton(
            iconSize: 100,
            highlightColor: mainColor,
            hoverColor: mainColor,
            icon: Text('Suche',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Categorie');
            },
          ),
        ],
      ),
    );
  }
}
