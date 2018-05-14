import 'package:flutter/material.dart';
import 'package:mbigdesign/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: const Text("Library Ways"),
        backgroundColor: Colors.lightBlue,
      ),
      body: new Column(
        children: <Widget>[
          new HomePageBody(),

        ],
      ),
    );
  }
}
