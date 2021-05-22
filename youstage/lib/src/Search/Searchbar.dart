import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  Searchbar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 350,
          height: 100,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey[350],
                hintText: "What are you looking for?",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Icon(Icons.search, size: 35,color: Colors.pink[600],),
      ],
    );
  }
}
