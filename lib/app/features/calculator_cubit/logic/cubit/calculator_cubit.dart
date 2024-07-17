import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorDisplay {
  final String expression;
  final String result;

  CalculatorDisplay(this.expression, this.result);
}

class CalculatorCubit extends Cubit<CalculatorDisplay> {
  CalculatorCubit() : super(CalculatorDisplay('', '0'));

  void append(String input) {
    final currentExpression = state.expression;

    // Split the current expression by operators to check the length of each segment
    List<String> segments = currentExpression.split(RegExp(r'[\+\-\*/÷x%]'));
    bool exceedsLimit = segments.any((segment) => segment.length >= 15);

    if (!exceedsLimit) {
      final newExpression = currentExpression + input;
      emit(CalculatorDisplay(newExpression, state.result));
    } else {
      Fluttertoast.showToast(
          msg: "Can't enter more than 15 digits",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  void appendParenthesis() {
    final currentExpression = state.expression;
    int openCount = '('.allMatches(currentExpression).length;
    int closeCount = ')'.allMatches(currentExpression).length;

    String newExpression;
    if (openCount > closeCount) {
      newExpression = '$currentExpression)';
    } else {
      newExpression = '$currentExpression(';
    }

    emit(CalculatorDisplay(newExpression, state.result));
  }

  void clear() {
    emit(CalculatorDisplay('', '0'));
  }

  void delete() {
    final currentExpression = state.expression;
    final newExpression =
        currentExpression.isNotEmpty ? currentExpression.substring(0, currentExpression.length - 1) : '';
    emit(CalculatorDisplay(newExpression, state.result));
  }

  void calculate() {
    final expression = state.expression;
    try {
      // Evaluate the expression
      final result = _evaluateExpression(expression);
      emit(CalculatorDisplay(expression, result));
    } catch (e) {
      emit(CalculatorDisplay(expression, 'Error'));
    }
  }

  String _evaluateExpression(String expression) {
    // Replace symbols for division and multiplication
    expression = expression.replaceAll('÷', '/').replaceAll('x', '*');

    // Replace % with its mathematical representation
    expression = expression.replaceAllMapped(RegExp(r'(\d+(\.\d+)?)%'), (Match m) {
      // Convert percentage to decimal
      double value = double.parse(m[1]!) / 100;
      return value.toString();
    });

    // Basic validation for invalid characters, now including x and ÷
    if (!RegExp(r'^[0-9+\-*/.()% x÷]+$').hasMatch(expression)) {
      return 'Invalid characters in expression';
    }

    try {
      // Create a parser
      Parser p = Parser();
      // Parse the expression
      Expression exp = p.parse(expression);
      // Create a context model
      ContextModel cm = ContextModel();
      // Evaluate the expression
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      return eval.toString();
    } on FormatException {
      // Return a specific error message for format exceptions
      return 'Syntax Error';
    } catch (e) {
      // Return 'Error' for all other exceptions
      return 'Error';
    }
  }
}
