import 'package:flutter/material.dart';

import 'SearchHeader.dart';
import 'Searchbar.dart';
import 'Trends.dart';

class SearchPage extends StatelessWidget {
  SearchPage();

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
              height: 25,
            ),
            SearchHeader(),
            Expanded(
              child: Container(
                child: Searchbar(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Trends(["Konzert","Corona","Rap","HipHop",]),
          ],
        ),
      ),
    );
  }
}
