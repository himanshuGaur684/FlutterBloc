import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blocks/local/retro/retro_bloc.dart';
import 'package:flutter_blocks/local/ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RetroBloc(InitialRetroState()),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
