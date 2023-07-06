import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/cumston_button.dart';
import 'package:my_first_flutter_app/styled_text.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({Key? key}) : super(key: key);

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  // late String inPutText;
  // late String getInputText;
  String inPutText = "";
  var getInputText = "";

  void showText() {
    setState(() {
      getInputText = inPutText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
          child: StyledTexts(name: getInputText),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
          child: TextField(
            // onChanged: (text) {
            //   inPutText = text;
            // },
            onChanged: (value) {
              inPutText = value;
            },
            decoration: const InputDecoration(
                hintText: "Username", enabledBorder: OutlineInputBorder()),
          ),
        ),
        CustomButton(
          buttonName: "Click",
          onPressed: showText,
        )
      ],
    );
  }
}
