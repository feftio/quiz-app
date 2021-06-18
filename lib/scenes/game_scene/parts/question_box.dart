import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/game_controller.dart';

class QuestionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameController gc = Get.put(GameController());
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Center(
        child: Obx(() {
          return AnimatedOpacity(
              opacity: gc.visible.value ? 1.0 : 0.0,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gc.questions[gc.questionIndex.value].body,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 23),
                  ),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                          "A: " +
                              gc.questions[gc.questionIndex.value].variants[0],
                          style: TextStyle(fontSize: 19)),
                      Text(
                          "B: " +
                              gc.questions[gc.questionIndex.value].variants[1],
                          style: TextStyle(fontSize: 19)),
                      Text(
                          "C: " +
                              gc.questions[gc.questionIndex.value].variants[2],
                          style: TextStyle(fontSize: 19)),
                      Text(
                          "D: " +
                              gc.questions[gc.questionIndex.value].variants[3],
                          style: TextStyle(fontSize: 19)),
                    ],
                  ))
                ],
              ));
        }),
      ),
    );
  }
}
