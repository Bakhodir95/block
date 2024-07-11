import 'package:block/views/screens/cubit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("BLoc"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              icon: const Icon(Icons.remove)),
          IconButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Text(
          context.watch<CounterCubit>().state.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
