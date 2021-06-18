import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:quizapp/scenes/score_scene/score_scene.dart';
import '../models/question.dart';

enum AnswerState { unanswered, correct, wrong }

class GameController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController _animationController;

  late Animation _animation;
  Animation get animation => _animation;

  late Animation _colorAnimation;
  Animation get colorAnimation => _colorAnimation;

  List<Question> _questions = <Question>[
    Question(
        body: "Единица измерения силы тока - это:",
        variants: ["Ампер", "Вольт", "Ватт", "Герц"],
        rightIndex: 0),
    Question(
        body: "Cатурн - это какая по счету планета от Солнца?",
        variants: ["Шестая", "Восьмая", "Пятая", "Седьмая"],
        rightIndex: 0),
    Question(
        body: "Сколько океанов на нашей планете?",
        variants: ["4", "5", "6", "3"],
        rightIndex: 0),
    Question(
        body: "Самая длинная в мире река - это?",
        variants: ["Амазонка", "Нил", "Янцзы", "Ганг"],
        rightIndex: 0),
    Question(
        body: "В каком предложении допущена ошибка?",
        variants: [
          "На полке лежала пачка макаронов.",
          "На ней не было чулок.",
          "Эти кремы просрочены.",
          "Дождь - это атмосферные осадки."
        ],
        rightIndex: 0)
  ];
  List<Question> get questions => _questions;

  RxInt _questionIndex = 0.obs;
  RxInt get questionIndex => this._questionIndex;

  late RxList<AnswerState> _doneAnswers;
  RxList<AnswerState> get doneAnswers => _doneAnswers;

  RxBool visible = true.obs;

  @override
  void onInit() {
    _doneAnswers = List<AnswerState>.generate(
        _questions.length, (_) => AnswerState.unanswered).obs;

    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);

    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController);

    _colorAnimation = ColorTween(begin: Colors.green, end: Colors.red)
        .animate(_animationController);

    _animationController
      ..addListener(() {
        update(['ProgressBar']);
      });
    _animationController.forward();
    super.onInit();
  }

  void nextQuestion() async {
    visible.value = true;

    Future.delayed(const Duration(milliseconds: 300), () {
      if (_questionIndex < _questions.length - 1)
        _questionIndex++;
      else
        Get.to(ScoreScene());
    });

    visible.value = false;

    Future.delayed(const Duration(milliseconds: 300), () {
      visible.value = true;
    });
  }

  void processAnswer(AnswerState answerState) {
    update(['AnswerStatePanel']);
    _doneAnswers.value[_questionIndex.value] = answerState;
  }
}
