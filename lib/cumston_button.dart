import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onPressed;
  String buttonName;
  ButtonStyle? buttonStyle;
  CustomButton(
      {Key? key, this.onPressed, required this.buttonName, this.buttonStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}
