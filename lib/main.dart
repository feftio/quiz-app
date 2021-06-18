import 'package:flutter/material.dart';
import 'scenes/game_scene/game_scene.dart';
import 'controllers/game_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
          fontFamily: 'Montserrat',
        ),
        home: GameScene(name: "Вопросы для студентов"));
  }
}
