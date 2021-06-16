import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "Самый большой океан ?asd asd asd asd asd asd asd asdas das dsad",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
