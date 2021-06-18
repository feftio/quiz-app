import 'package:flutter/material.dart';
import 'package:quizapp/scenes/game_scene/parts/answer_state_panel.dart';

class InfoPanel extends StatelessWidget {
  const InfoPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text("Раунд: 1"), Text("Соперник: fefted")],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(color: Colors.white),
              AnswerStatePanel()
            ],
          ),
        ));
  }
}
