import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'components/random_bottom_nav_bar.dart';
import 'components/random_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Random Colors',
          style: GoogleFonts.lato(
            shadows: [
              Shadow(
                offset: const Offset(-5, 2),
                blurRadius: 8,
                color: Colors.black.withOpacity(0.45),
              ),
            ],
          ),
        ),
        elevation: 0,
        backgroundColor: Provider.of<RandomController>(context).kColor,
      ),
      backgroundColor: Provider.of<RandomController>(context).kColor,
      body: Consumer<RandomController>(
        builder: (context, value, child) {
          return Center(
            child: RandomButton(
              onpress: () {
                Provider.of<RandomController>(context, listen: false)
                    .randomColor();
              },
            ),
          );
        },
      ),
      bottomNavigationBar: RandomBottomNavBar(),
    );
  }
}
