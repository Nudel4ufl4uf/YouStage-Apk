import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  Grid();

  final BorderRadius radius = BorderRadius.all(Radius.circular(35));

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(25),
          sliver: SliverGrid.count(
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage(
                      'images/bausa.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
              )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Sound of screams but the'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Who scream'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution is coming...'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution, they...'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution is coming...'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution, they...'),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
