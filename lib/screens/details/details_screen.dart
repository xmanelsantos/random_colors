import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/constants.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'components/details_floating_button.dart';
import 'components/details_navigation_bar.dart';
import 'components/hex_color_box.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Provider.of<RandomController>(context).kColor;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<RandomController>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding * 2,
            ),
            child: Row(
              children: [
                HexColorBox(
                  color: color,
                ),
                const Spacer(),
                Center(
                  child: Container(
                    width: size.width * 0.4,
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-4, 3),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.32),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: const DetailsFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: const DetailsNavigationBar(),
    );
  }
}
