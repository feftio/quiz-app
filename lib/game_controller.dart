import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models/question.dart';

enum AnswerState { noanswered, correct, uncorrect }

class GameController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController _animationController;

  late Animation _animation;
  Animation get animation => this._animation;

  List<Question> _questions = <Question>[
    Question("Единица измерения силы тока - это:",
        ["Ампер", "Вольт", "Ватт", "Герц"]),
    Question("Cатурн - это какая по счету планета от Солнца?",
        ["Шестая", "Восьмая", "Пятая", "Седьмая"]),
    Question("Сколько океанов на нашей планете?", ["4", "5", "6", "3"]),
  ];

  RxInt _questionIndex = 0.obs;
  RxInt get questionIndex => this._questionIndex;

  late RxList<AnswerState> _doneAnswers;
  RxList<AnswerState> get doneAnswers => _doneAnswers;

  @override
  void onInit() {
    late RxList<AnswerState> _doneAnswers = List<AnswerState>.generate(
        _questions.length, (_) => AnswerState.noanswered).obs;
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward().whenComplete(nextQuestion);
    super.onInit();
  }

  void nextQuestion() {}
}
