import 'package:flutter/material.dart';
import 'package:quizapp/controllers/game_controller.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/game_controller.dart';

class ProgressBar extends StatelessWidget {
  final double width;

  ProgressBar({Key? key, double this.width = 360}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white38,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<GameController>(
          id: 'ProgressBar',
          builder: (_gameController) => Stack(
            children: [
              LayoutBuilder(
                  builder: (context, constraints) => Container(
                      width: _gameController.animation.value *
                          constraints.maxWidth,
                      height: 50,
                      decoration: BoxDecoration(
                          //color: Color(0xffe6812f),
                          color: _gameController.colorAnimation.value,
                          borderRadius: BorderRadius.circular(5)))),
              Positioned.fill(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                      "${(_gameController.animation.value * 60).round()} сек...",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]),
              ),
            ],
          ),
        ));
  }
}
