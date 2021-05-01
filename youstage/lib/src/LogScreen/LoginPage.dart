import 'package:flutter/material.dart';
import 'Header.dart';
import 'InputWrapper.dart';

class _LoginPage extends State<LoginPage> {
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
            Header(),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget{
  Widget build (BuildContext context){
    return Container( 
      margin: EdgeInsets.all(50),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      child: FlatButton(  
                child: Text('LogIn', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },  
              ),  
    ); 
  }
}

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPage createState() => _LoginPage();
}
