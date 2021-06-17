import 'package:flutter/material.dart';
import 'answer_box.dart';

class AnswersView extends StatelessWidget {
  const AnswersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [AnswerBox("A"), AnswerBox("B")],
        ),
        Column(
          children: [AnswerBox("C"), AnswerBox("D")],
        )
      ],
    );
  }
}
