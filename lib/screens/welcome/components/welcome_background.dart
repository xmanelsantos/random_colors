import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({
    Key key,
    @required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: size.height * 0.2,
            right: size.width * 0.5,
            child: Image.asset(
              'assets/images/background/center.png',
              height: size.height * 0.5,
            ),
          ),
          Positioned(
            child: Image.asset('assets/images/background/topright.png'),
          ),
          Positioned(
            bottom: 0,
            left: size.width * 0.6,
            child: Image.asset(
              'assets/images/background/bottomright.png',
              height: size.height * 0.25,
            ),
          ),
          child
        ],
      ),
    );
  }
}
