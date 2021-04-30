import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  int currentIndex = 0;
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Bottom navigation example')
        ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar( 
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Spotlight'
              ),
            ),
            backgroundColor: Colors.pink[400],
          ),
          BottomNavigationBarItem(
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Kategorien'
              ),
            ),
            backgroundColor: Colors.pink[400],
          ),
          BottomNavigationBarItem(
            TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Suche'
              ),
            ),
            backgroundColor: Colors.pink[400],
          ),
        ],
        onTap: (index){
          setState((){
            currentIndex = index;
          });
        }
      ),
    );
    }
  }

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }
}