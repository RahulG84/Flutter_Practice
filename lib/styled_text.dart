import 'package:flutter/material.dart';

class StyledTexts extends StatelessWidget {
  String name;
  Color? color;

  StyledTexts({Key? key, required this.name, this.color}) : super(key: key);

  // StyledTexts(String text, {super.key}) : outputText = text;
  // String outputText;

  // StyledTexts(this.name,{super.key});
  // String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 22,
        color: color,
        // color: Color(F10933FF),
        //7E2842FF
        // backgroundColor: Color.fromRGBO(208, 19, 75, 100.0),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
