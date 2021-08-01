import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/presentation/Screens/second_screen.dart';
import 'package:flutter_bloc_concepts/presentation/Screens/third_screen.dart';

import '../logic/cubit/counter_cubit.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      ///we use blocProvider when we want to create and use bloc/cubit instance
      ///we use blocProvider.value when we want to use an existing instance of bloc/cunit
      routes: {
        '/': (context) => BlocProvider.value(
              value: _counterCubit,
              child: HomeScreen(
                title: "HomeScreen",
                color: Colors.blueAccent,
              ),
            ),
        '/second': (context) => BlocProvider.value(
              value: _counterCubit,
              child: SecondScreen(
                title: "SecondScreen",
                color: Colors.redAccent,
              ),
            ),
        '/third': (context) => BlocProvider.value(
              value: _counterCubit,
              child: ThirdScreen(
                title: "ThirdScreen",
                color: Colors.greenAccent,
              ),
            ),
      },
    );
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}
