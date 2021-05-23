import 'package:flutter/material.dart';
import 'package:youstage/src/AppWideTools/BottomNavBar.dart';
import 'package:youstage/src/AppWideTools/Header.dart';

import 'CategorieGrid.dart';
import 'CategorieHeader.dart';

class CategoriePage extends StatelessWidget {
  // This widget is the root of your application.
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
            Header("Kategorien"),
            Expanded(
                child: Container(
              child: CategorieGrid(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(2),
    );
  }
}
