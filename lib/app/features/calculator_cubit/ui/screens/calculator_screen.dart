import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_color.dart';
import '../../logic/cubit/calculator_cubit.dart';
import '../widget/calcuator.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldDarkBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<CalculatorCubit, CalculatorDisplay>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          reverse: true,
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: SafeArea(
                              child: Text(state.expression,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 48)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        state.result,
                        style: TextStyle(color: Colors.grey, fontSize: 35),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: buildCalculatorButtons(context),
          ),
        ],
      ),
    );
  }
}
