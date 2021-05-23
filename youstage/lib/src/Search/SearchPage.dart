import 'package:flutter/material.dart';
import 'package:youstage/src/AppWideTools/BottomNavBar.dart';
import 'package:youstage/src/AppWideTools/Header.dart';

import 'Searchbar.dart';
import 'Trends.dart';

class SearchPage extends StatelessWidget {
  SearchPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              height: 25,
            ),
            Header("Suche"),
            Container(
              child: Searchbar(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
            Expanded(
              child: Trends([
                "Konzert",
                "Corona",
                "Rap",
                "HipHop",
                "187",
                "StandUp"
                "HBZ",
                "Sido",
                "EDM"
              ]),
            ),
            BottomNavBar(3),
          ],
        ),
      ),
    );
  }
}
