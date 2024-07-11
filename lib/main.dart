import 'package:block/views/screens/cubit_screen.dart';
import 'package:block/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) {
        return CounterCubit();
      },
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
