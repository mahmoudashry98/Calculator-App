import 'package:calculator_app/app/core/observer.dart';
import 'package:calculator_app/app/features/calculator_cubit/logic/cubit/calculator_cubit.dart';
import 'package:calculator_app/app/features/calculator_cubit/ui/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => CalculatorCubit(),
        child: CalculatorScreen(),
      ),
    );
  }
}
