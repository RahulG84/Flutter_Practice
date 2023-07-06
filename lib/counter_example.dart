import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/cumston_button.dart';
import 'package:my_first_flutter_app/styled_text.dart';
import 'package:my_first_flutter_app/text_widgets.dart';
import 'main.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  var counter = 0;

  void counterIncrement() {
    setState(() {
      counter += 1;
    });
  }

  void counterDecrement() {
    setState(() {
      counter -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const TextWidgets(),
        // SizedBox.fromSize(
        //   size: const Size.fromHeight(20.0),
        // ),
        const SizedBox(
          height: 20.0,
        ),
        StyledTexts(name: '$counter', color: Colors.black),
        const SizedBox(
          height: 10.0,
        ),
        CustomButton(
            onPressed: counterIncrement,
            buttonName: "+",
            buttonStyle: TextButton.styleFrom(
              shape: const BeveledRectangleBorder(
                  side: BorderSide(
                      width: 1.0, color: Colors.red, strokeAlign: 3.0)),
              elevation: 10.0,
              foregroundColor: Colors.yellow,
              // padding: const EdgeInsets.all(10.0),
            )),
        CustomButton(
          onPressed: counterDecrement,
          buttonName: "-",
          buttonStyle: TextButton.styleFrom(
            shape: const BeveledRectangleBorder(
                side: BorderSide(
                    width: 1.0, color: Colors.red, strokeAlign: 3.0)),
            elevation: 10.0,
            foregroundColor: Colors.yellow,
          ),
        )
      ],
    ));
  }
}
