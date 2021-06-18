import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:quizapp/controllers/game_controller.dart';

class AnswersBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            AnswerButton(label: "A", state: AnswerState.correct),
            AnswerButton(label: "B", state: AnswerState.wrong)
          ],
        ),
        Column(
          children: [
            AnswerButton(label: "C", state: AnswerState.wrong),
            AnswerButton(label: "D", state: AnswerState.wrong)
          ],
        )
      ],
    );
  }
}
