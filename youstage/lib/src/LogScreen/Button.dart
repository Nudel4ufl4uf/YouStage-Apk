import 'package:flutter/material.dart';
import 'package:youstage/src/HomeScreen/HomePage.dart';
/* 
class Button2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }));
  }
}
*/
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
                  Navigator.pushNamed(context, '/HomePage');
                },  
              ),  
    ); 
  }
}