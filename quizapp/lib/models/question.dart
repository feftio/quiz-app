class Question {
  Question(this._text, this._variants);

  final String _text;
  final List<String> _variants;

  String get text => _text;
  String get rightVariant => _variants[0];
  List<String> get variants => [..._variants];
  List<String> get randomVariants => [..._variants]..shuffle();
  int get countVariants => _variants.length;

  @override
  String toString() {
    return _text;
  }
}
