import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RandomButton extends StatefulWidget {
  final Function() onpress;

  const RandomButton({Key key, this.onpress}) : super(key: key);

  @override
  _RandomButtonState createState() => _RandomButtonState();
}

Color kPrimaryColor = const Color.fromRGBO(152, 255, 130, 1);

Color kPrimaryBttnColor = Colors.blue;

class _RandomButtonState extends State<RandomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: kPrimaryBttnColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.17),
          )
        ],
      ),
      child: TextButton(
        onPressed: widget.onpress,
        child: Text(
          'R',
          style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24,
              shadows: [
                const Shadow(
                  offset: Offset(-2, 0),
                  blurRadius: 6,
                ),
              ]),
        ),
      ),
    );
  }
}
