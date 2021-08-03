import 'package:flutter/material.dart';

class RandomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 30,
          onPressed: () {},
          child: Image.asset(
            'assets/icons/001-random.png',
            scale: 2,
          ),
        ),
      ),
    );
  }
}
