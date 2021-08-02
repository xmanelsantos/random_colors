import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Color kPrimaryColor = Color.fromRGBO(152, 140, 130, 1);

class _HomeScreenState extends State<HomeScreen> {
  final math.Random _random = math.Random();
  SystemUiOverlayStyle _currentStyle = SystemUiOverlayStyle.light;

  void _randomColor() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Random Colors'),
          elevation: 0,
          backgroundColor: kPrimaryColor,
        ),
        backgroundColor: kPrimaryColor,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: _currentStyle,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                final Color color = Color.fromRGBO(
                  _random.nextInt(255),
                  _random.nextInt(255),
                  _random.nextInt(255),
                  1,
                );
                setState(() {
                  kPrimaryColor = color;
                });
              },
              child: const Text('Random Color'),
            ),
          ),
        ));
  }
}
