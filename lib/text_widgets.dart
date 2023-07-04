import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class TextWidgets extends StatelessWidget {
  // const TextWidgets({key}) : super(key:key);
  const TextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  const StyledTexts(
      name: "Hello Rahul",
    );

  }
}
