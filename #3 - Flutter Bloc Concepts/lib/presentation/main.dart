import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_concepts/presentation/Screens/second_screen.dart';
import 'package:flutter_bloc_concepts/presentation/Screens/third_screen.dart';

import '../logic/cubit/counter_cubit.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => HomeScreen(
              title: "HomeScreen",
              color: Colors.blueAccent,
            ),
        '/second': (context) => SecondScreen(
              title: "SecondScreen",
              color: Colors.redAccent,
            ),
        '/third': (context) => ThirdScreen(
              title: "ThirdScreen",
              color: Colors.greenAccent,
            ),
      },
    );
  }
}
