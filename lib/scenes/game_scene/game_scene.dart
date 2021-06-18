import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:get/get.dart';

import 'parts/info_panel.dart';
import 'parts/question_box.dart';
import 'parts/answers_box.dart';
import 'parts/progress_bar.dart';
import 'package:quizapp/controllers/game_controller.dart';

class GameScene extends StatelessWidget {
  GameScene({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.quiz_rounded),
              Text("  "),
              Text(name),
              Spacer(),
              Icon(Icons.close)
            ],
          ),
          backgroundColor: Color(0xff2c4259),
        ),
        body: Stack(
          children: [
            // #24293f
            WebsafeSvg.asset('assets/background2.svg', fit: BoxFit.fill),
            Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InfoPanel(),
                    QuestionBox(),
                    AnswersBox(),
                    ProgressBar()
                  ],
                ))
          ],
        ));
  }
}
