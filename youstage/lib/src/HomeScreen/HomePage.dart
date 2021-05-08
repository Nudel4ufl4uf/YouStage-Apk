import 'package:flutter/material.dart';

import './Grid.dart';
import 'HomeBar.dart';
import 'HomeHeader.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.pink[500], Colors.pink[300], Colors.pink[400]]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            HomeHeader(),
            Expanded(
              child: Container(
              child: Grid(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )),
            ))
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(35),
          topRight: Radius.circular(35),), 
          child: HomeBar(),
      ),
    );
  }
}
