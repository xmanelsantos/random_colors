import 'dart:math' as math;
import 'package:flutter/material.dart';

class RandomController extends ChangeNotifier {
  Color kColor = const Color.fromRGBO(249, 168, 38, 1);
  Color kColorBttn = Colors.blue;
  final math.Random _random = math.Random();

  void randomColor() {
    final Color _color = Color.fromRGBO(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      1,
    );
    final Color _colorBttn = Color.fromRGBO(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      1,
    );
    kColor = _color;
    kColorBttn = _colorBttn;
    notifyListeners();
  }
}
