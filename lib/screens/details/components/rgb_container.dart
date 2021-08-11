import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class RGBContainer extends StatelessWidget {
  const RGBContainer({
    Key key,
    @required this.colorRGB,
    this.bgcolor,
    this.rgb,
  }) : super(key: key);

  final String colorRGB;
  final Color bgcolor;
  final String rgb;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-4, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.32),
          )
        ],
      ),
      child: Row(
        children: [
          Text(
            rgb,
            style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.black54),
          ),
          const VerticalDivider(
            color: Colors.white,
            indent: 5,
            endIndent: 5,
          ),
          Text(
            colorRGB,
            style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
