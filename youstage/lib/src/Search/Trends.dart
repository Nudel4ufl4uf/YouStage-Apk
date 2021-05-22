import 'package:flutter/material.dart';

class Trends extends StatelessWidget {
  List<String> input;

  Trends(this.input);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var i in input)
          Container(
            color: Colors.white,
            child: Text(
              "#" + i,
              textAlign: TextAlign.left,
            ),
          ),
      ],
    );
  }
}
