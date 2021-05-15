import 'package:flutter/material.dart';

import 'InfoBuilder.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InfoBuilder(
          "Max Mustermann",
          "Veranstalter",
          "mmuster",
          4200,
          62,
          false,
        ),
      ),
    );
  }
}
