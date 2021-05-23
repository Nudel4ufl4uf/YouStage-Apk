import 'package:flutter/material.dart';

class Trends extends StatelessWidget {
  List<String> input;

  Trends(this.input);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Trends",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          for (var i in input)
            Container(
              padding: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Text(
                "#" + i ,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
