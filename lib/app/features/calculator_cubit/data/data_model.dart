// import 'package:calculator_app/app/core/theme/app_color.dart';
// import 'package:flutter/material.dart';

// class CalculatorButton extends StatelessWidget {
//   final String text;
//   final Color color;

//   const CalculatorButton({
//     Key? key,
//     required this.text,
//     required this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: color,
//             padding: const EdgeInsets.all(20.0),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//           ),
//           onPressed: () {
//             // Define button press logic here
//           },
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CalculatorButtonRow extends StatelessWidget {
//   final List<CalculatorButton> buttons;

//   const CalculatorButtonRow(this.buttons, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: buttons,
//     );
//   }
// }

// Widget buildCalculatorButtons(BuildContext context) {
//   List<CalculatorButtonRow> buttonRows = [
//     CalculatorButtonRow(const [
//       CalculatorButton(text: 'C', color: kAccentColor),
//       CalculatorButton(text: '()', color: kAccentColor),
//       CalculatorButton(text: '%', color: kAccentColor),
//       CalculatorButton(text: '÷', color: kMainColor),
//     ]),
//     CalculatorButtonRow(const [
//       CalculatorButton(text: '7', color: kGrayColor),
//       CalculatorButton(text: '8', color: kGrayColor),
//       CalculatorButton(text: '9', color: kGrayColor),
//       CalculatorButton(text: 'x', color: kMainColor),
//     ]),
//     CalculatorButtonRow(const [
//       CalculatorButton(text: '4', color: kGrayColor),
//       CalculatorButton(text: '5', color: kGrayColor),
//       CalculatorButton(text: '6', color: kGrayColor),
//       CalculatorButton(text: '-', color: kMainColor),
//     ]),
//     CalculatorButtonRow(const [
//       CalculatorButton(text: '1', color: kGrayColor),
//       CalculatorButton(text: '2', color: kGrayColor),
//       CalculatorButton(text: '3', color: kGrayColor),
//       CalculatorButton(text: '+', color: kMainColor),
//     ]),
//     CalculatorButtonRow(const [
//       CalculatorButton(text: '.', color: kGrayColor),
//       CalculatorButton(text: '0', color: kGrayColor),
//       CalculatorButton(text: '<x', color: kGrayColor),
//       CalculatorButton(text: '=', color: kMainColor),
//     ]),
//   ];

//   return Column(
//     children: buttonRows.map((row) => row.build(context)).toList(),
//   );
// }
