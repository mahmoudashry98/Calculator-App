abstract class CalculatorState {}

class CalculatorDisplay extends CalculatorState {
  final String expression;
  final String result;

  CalculatorDisplay(this.expression, this.result);
}