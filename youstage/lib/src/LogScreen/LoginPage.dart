import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class _LoginPage extends State<LoginPage> {
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
              height: 50,
            ),
            Header(),
            Expanded(
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPage createState() => _LoginPage();
}
