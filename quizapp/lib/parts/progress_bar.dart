import 'package:flutter/material.dart';
import 'dart:async';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double _width = 0;
  final double _maxWidth = 300;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) => print("hello"));
  }

  void handleTimeout() {
    print(_width);
    setState(() {
      _width += _maxWidth / 60;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: _maxWidth,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.white38,
            border: Border.all(color: Colors.amber.shade200, width: 5),
            borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Container(
              width: _width,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(5)),
            ),
            Positioned.fill(child: Text("60"))
          ],
        ));
  }
}
