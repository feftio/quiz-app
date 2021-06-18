import 'package:flutter/cupertino.dart';

@immutable
class Question {
  Question(
      {required this.body, required this.variants, required this.rightIndex});

  final String body;
  final List<String> variants;
  final int rightIndex;

  String get right => variants[rightIndex];
  int get count => variants.length;
  Question shuffle() {
    List<String> _shuffled = [...variants]..shuffle();
    int _rightIndex = _shuffled.indexOf(right);
    return Question(body: body, variants: _shuffled, rightIndex: _rightIndex);
  }

  @override
  String toString() {
    return body;
  }
}
