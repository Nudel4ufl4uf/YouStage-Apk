import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:youstage/src/Profile/StageBuilder.dart';

class InfoBuilder extends StatelessWidget {
  final String name;
  final int follower;
  final int follows;
  final String rank;
  final String tag;
  final bool stage;

  InfoBuilder(
      this.name, this.rank, this.tag, this.follower, this.follows, this.stage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.pink[500], Colors.pink[300], Colors.pink[400]],
          ),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 280,
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/max_mustermann.jpg',
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.cancel_rounded,
                          color: Colors.pink[600],
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Tippe auf dein Profilbild für Mehr!",
                  style: TextStyle(
                    color: Colors.pink[600],
                    fontSize: 10,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.grey[750],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.verified_rounded,
                      color: Colors.blue[400],
                      size: 20,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  rank + " | @" + tag,
                  style: TextStyle(
                    color: Colors.grey[750],
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Fans $follower" + "    Folgt $follows",
                  style: TextStyle(
                    color: Colors.grey[750],
                    fontSize: 15,
                  ),
                ),
              ),
              StageBuilder(stage),
            ],
          ),
        ),
      ),
    );
  }
}
