import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'components/random_bottom_nav_bar.dart';
import 'components/random_button.dart';
import 'components/random_floating_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Random Colors',
          style: GoogleFonts.lato(
            shadows: [
              Shadow(
                offset: const Offset(-5, 2),
                blurRadius: 8,
                color: Colors.black.withOpacity(0.25),
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
      floatingActionButton: RandomFloatingButton(
        onpress: () {
          Provider.of<RandomController>(context, listen: false).randomColor();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
