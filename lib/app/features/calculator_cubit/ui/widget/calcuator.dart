import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_color.dart';
import '../../logic/cubit/calculator_cubit.dart';

Widget buildCalculatorButtons(BuildContext context) {
  List<CalculatorButtonRow> buttonRows = [
    CalculatorButtonRow([
      CalculatorButton(
        text: 'C',
        color: Colors.orange,
        onPressed: () => context.read<CalculatorCubit>().clear(),
      ),
      CalculatorButton(
        text: '()',
        color: Colors.orange,
        onPressed: () => context.read<CalculatorCubit>().appendParenthesis(),
      ),
      CalculatorButton(
        text: '%',
        color: Colors.orange,
        onPressed: () => context.read<CalculatorCubit>().append('%'),
      ),
      CalculatorButton(
        text: '÷',
        color: Colors.blueGrey,
        onPressed: () => context.read<CalculatorCubit>().append('÷'),
      ),
    ]),
    CalculatorButtonRow([
      CalculatorButton(
        text: '7',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('7'),
      ),
      CalculatorButton(
        text: '8',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('8'),
      ),
      CalculatorButton(
        text: '9',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('9'),
      ),
      CalculatorButton(
        text: 'x',
        color: Colors.blueGrey,
        onPressed: () => context.read<CalculatorCubit>().append('x'),
      ),
    ]),
    CalculatorButtonRow([
      CalculatorButton(
        text: '4',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('4'),
      ),
      CalculatorButton(
        text: '5',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('5'),
      ),
      CalculatorButton(
        text: '6',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('6'),
      ),
      CalculatorButton(
        text: '-',
        color: Colors.blueGrey,
        onPressed: () => context.read<CalculatorCubit>().append('-'),
      ),
    ]),
    CalculatorButtonRow([
      CalculatorButton(
        text: '1',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('1'),
      ),
      CalculatorButton(
        text: '2',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('2'),
      ),
      CalculatorButton(
        text: '3',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('3'),
      ),
      CalculatorButton(
        text: '+',
        color: Colors.blueGrey,
        onPressed: () => context.read<CalculatorCubit>().append('+'),
      ),
    ]),
    CalculatorButtonRow([
      CalculatorButton(
        text: '.',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('.'),
      ),
      CalculatorButton(
        text: '0',
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().append('0'),
      ),
      CalculatorButton(
        text: '<x',
        isHaveIcon: true,
        iconData: Icons.backspace_outlined,
        color: Colors.grey,
        onPressed: () => context.read<CalculatorCubit>().delete(),
      ),
      CalculatorButton(
        text: '=',
        color: Colors.blueGrey,
        onPressed: () => context.read<CalculatorCubit>().calculate(),
      ),
    ]),
  ];

  return Column(
    children: buttonRows.map((row) => row.build(context)).toList(),
  );
}

class CalculatorButtonRow extends StatelessWidget {
  final List<CalculatorButton> buttons;

  const CalculatorButtonRow(this.buttons, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color color;
  final bool? isHaveIcon;
  final IconData? iconData;
  final VoidCallback onPressed;

  const CalculatorButton({
    Key? key,
    this.isHaveIcon = false,
    this.iconData,
    this.textStyle,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.all(20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: onPressed,
          child: isHaveIcon != true
              ? Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                )
              : Icon(
                  iconData,
                  color: kWhiteColor,
                ),
        ),
      ),
    );
  }
}
