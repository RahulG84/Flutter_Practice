import 'package:flutter/material.dart';

class StyledTexts extends StatelessWidget {
   final String name;
   const StyledTexts({ Key? key, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Text(
      name,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}