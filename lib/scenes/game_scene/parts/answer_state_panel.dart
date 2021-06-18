import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/game_controller.dart';

class AnswerStatePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameController>(
        id: 'AnswerStatePanel',
        init: GameController(),
        builder: (_gameController) {
          List<Container> list = [];

          _gameController.doneAnswers.forEach((doneAnswer) {
            switch (doneAnswer) {
              case AnswerState.unanswered:
                {
                  list.add(Container(
                      child: Icon(
                    Icons.radio_button_on,
                    color: Colors.white,
                  )));
                  break;
                }
              case AnswerState.correct:
                {
                  list.add(Container(
                      child: Icon(
                    Icons.check_box,
                    color: Colors.green,
                  )));
                  break;
                }
              case AnswerState.wrong:
                {
                  list.add(Container(
                      child: Icon(
                    Icons.cancel,
                    color: Colors.red,
                  )));
                  break;
                }
            }
          });

          return Row(children: list);
        });
  }
}
