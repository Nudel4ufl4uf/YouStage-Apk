import 'package:flutter/material.dart';

import '../../main.dart';

class Button extends StatelessWidget{
  
  Button();
  
  Widget build (BuildContext context){
    return Container( 
      margin: EdgeInsets.only(left: 75,right: 75),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(  
                child: Text('Login', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),  
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(color: Colors.red)
                    )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.pink[600]),
              ),  
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/home',
                    );
                },  
              ),  
    ); 
  }
}