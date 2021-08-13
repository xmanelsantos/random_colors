import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_colors/screens/welcome/components/welcome_background.dart';

import '../../../constants.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return WelcomeBackground(
        child: Column(
      children: [
        SafeArea(
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            alignment: Alignment.topCenter,
            child: Text(
              'Welcome !',
              style: GoogleFonts.aBeeZee(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
        ),
        SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: SvgPicture.asset(
                  'assets/images/universe_orange.svg',
                  height: size.height * 0.45,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
