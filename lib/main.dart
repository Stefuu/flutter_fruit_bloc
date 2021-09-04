import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './views/home/home.dart';
import 'bloc/fruit_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demonio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<FruitBloc>(
        create: (_) => FruitBloc(),
        child: Home(),
      ),
    );
  }
}
