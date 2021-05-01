import 'package:flutter/material.dart';
import 'package:youstage/src/HomeScreen/HomePage.dart';
import 'src/LogScreen/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: '/',
      routes: { 
        '/logIn': (context) => LoginPage(),
        '/home':(context) => HomePage(),
      },
    );
  }
}

