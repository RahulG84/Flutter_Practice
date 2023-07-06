import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/counter_example.dart';
import 'package:my_first_flutter_app/dice_roller.dart';
import 'package:my_first_flutter_app/custom_text_input.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text("Counter App"),
          // ),
          body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/theme-image.webp"),
              fit: BoxFit.cover),
        ),
        child: const SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // DiceExample(),
                  // DiceExample(),
                  // DiceExample(),
                  // DiceExample(),
                  // DiceExample(),
                  CustomTextInput(),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}

// Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// mainAxisSize: MainAxisSize.min,
// children: [
// const TextWidgets(),
// // SizedBox.fromSize(
// //   size: const Size.fromHeight(20.0),
// // ),
// const SizedBox(
// height: 20.0,
// ),
// CustomButton(
// onPressed: rollDice,
// buttonName: "Click Me",
// buttonStyle: TextButton.styleFrom(
// shape: const BeveledRectangleBorder(
// side: BorderSide(
// width: 1.0, color: Colors.red, strokeAlign: 3.0)),
// elevation: 10.5,
// foregroundColor: Colors.yellow,
// // padding: const EdgeInsets.all(10.0),
// ))
// ],
// )
