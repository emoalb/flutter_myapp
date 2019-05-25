import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String text;

  MyContainer({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[Text(text, textAlign: TextAlign.center)],
      ),
    );
  }
}
