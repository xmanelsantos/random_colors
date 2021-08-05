import 'package:flutter/material.dart';

class RandomFloatingButton extends StatelessWidget {
  final Function() onpress;

  const RandomFloatingButton({Key key, this.onpress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 10,
          onPressed: onpress,
          child: Image.asset(
            'assets/icons/001-random.png',
            scale: 2,
          ),
        ),
      ),
    );
  }
}
