import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit {
  CalculatorCubit(super.initialState);

  static CalculatorCubit get(context) =>
      BlocProvider.of<CalculatorCubit>(context);
}
