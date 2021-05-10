import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  HomeBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Text('Spotlight',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Text('Kategorien',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Text('Suche',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          label: '',
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}