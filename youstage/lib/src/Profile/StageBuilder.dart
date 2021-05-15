import 'package:flutter/material.dart';

import 'buildStages.dart';

class StageBuilder extends StatelessWidget {
  final bool stages;

  StageBuilder(this.stages);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80, bottom: 20, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "Meine Stages",
                  style: TextStyle(
                    color: Colors.grey[750],
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                child: Icon(
                  Icons.add_circle_rounded,
                  color: Colors.pink[600],
                  size: 40,
                ),
              ),
            ],
          ),
          if (stages)
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    top: 40,
                  ),
                  child: Image(
                    image: AssetImage(
                      'assets/icons/sad.png',
                    ),
                    color: Colors.grey[300],
                    height: 150,
                    width: 150,
                  ),
                ),
                Text(
                  "Hmm, leider hast du bisher \nnoch keine Stages erstellt.",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          if (!stages) buildStages(),
        ],
      ),
    );
  }
}
