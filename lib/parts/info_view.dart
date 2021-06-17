import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Раунд: 1"),
                      Text("Соперник: fefted")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "***********************************",
                    textAlign: TextAlign.left,
                  ),
                  Text("Правильные ответы")
                ],
              ),
            )));
  }
}
