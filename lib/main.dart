import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/text_widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor:Colors.lightBlue,
      body:Center(
          child: TextWidgets()
      )
    ),
  ));
}

