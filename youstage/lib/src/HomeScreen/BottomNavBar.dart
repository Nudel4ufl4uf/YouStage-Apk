import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  
  BottomNavBar(this.active);
  final int active;


  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            iconSize: 100,
            //hoverColor: mainColor,
            icon: Text('Spotlight',
                style: TextStyle(
                  color: getColor(1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          IconButton(
            iconSize: 100,
            //hoverColor: mainColor,
            icon: Text('Kategorien',
                style: TextStyle(
                  color: getColor(2),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Categorie');
            },
          ),
          IconButton(
            iconSize: 100,
            //hoverColor: mainColor,
            icon: Text('Suche',
                style: TextStyle(
                  color: getColor(3),
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

  Color getColor (int number){
    if (number == active){
      return Colors.pink[600]; 
    } 
    return Colors.grey[700];
  }
}
