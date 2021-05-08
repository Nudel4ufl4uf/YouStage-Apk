import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(children: <Widget>[
            Expanded(
              child: Text('YouStage',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.asset('assets/images/max_mustermann.jpg',)
                /*child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/max_mustermann.jpg'),
                    ),
                  ),
                ),*/
              ),
            )
          ]),
        ),
      ),
    ]);
  }
}
