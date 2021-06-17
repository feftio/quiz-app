import 'package:flutter/material.dart';
import 'game_scene.dart';
import 'game_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.teal,
          accentColor: Colors.cyan,
          fontFamily: 'Montserrat',
        ),
        home: GameScene());
  }
}
