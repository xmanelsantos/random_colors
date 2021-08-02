import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Color kPrimaryColor = Color.fromRGBO(152, 140, 130, 1);

class _HomeScreenState extends State<HomeScreen> {
  final math.Random _random = math.Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Random Colors',
          style: GoogleFonts.lato(),
        ),
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      body: Center(
          child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          shape: BoxShape.circle,
        ),
        child: TextButton(
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
          child: Text(
            'R',
            style: GoogleFonts.montserrat(color: Colors.white, fontSize: 24),
          ),
        ),
      )),
    );
  }
}
