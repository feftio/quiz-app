import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quizapp/controllers/game_controller.dart';
import 'package:quizapp/widgets/bouncing_button.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({Key? key, required this.label, required this.state})
      : super(key: key);

  final String label;
  final AnswerState state;
  final GameController _gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: BouncingButton(
        onTap: () {
          _gameController.processAnswer(this.state);
          _gameController.nextQuestion();
          print("Clicked on ${label}.");
        },
        child: Container(
          width: width * 0.39,
          height: 75,
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffe6812f), borderRadius: BorderRadius.circular(5)),
          child: Text(label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              )),
        ),
      ),
    );
  }
}
