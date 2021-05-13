import 'package:flutter/material.dart';

class CategorieHeader extends StatelessWidget {
  
  CategorieHeader();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(children: <Widget>[
            Expanded(
              child: Text('Kategorien',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/max_mustermann.jpg'),
              ),
            ),
          ]),
        ),
      ),
    ]);
  }
}
