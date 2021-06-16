import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'parts/info_view.dart';
import 'parts/question_view.dart';
import 'parts/answers_view.dart';
import 'parts/progress_bar.dart';

class GameScene extends StatelessWidget {
  const GameScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        WebsafeSvg.asset('assets/background.svg', fit: BoxFit.cover),
        Container(
            padding: EdgeInsets.only(top: 50, bottom: 50, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InfoView(),
                QuestionView(),
                AnswersView(),
                ProgressBar()
              ],
            ))
      ],
    ));
  }
}
