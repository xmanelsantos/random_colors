import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/constants.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'components/details_floating_button.dart';
import 'components/details_navigation_bar.dart';
import 'components/hex_color_box.dart';
import 'components/rgb_container.dart';

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
                SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Text(
                        'Hex Color: ',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      HexColorBox(
                        color: color,
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Text(
                        'RGB Color',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RGBContainer(
                            colorRGB: color.red.toString(),
                            bgcolor: Colors.red[100],
                            rgb: 'R',
                          ),
                          const SizedBox(height: 5),
                          RGBContainer(
                            colorRGB: color.green.toString(),
                            bgcolor: Colors.green[100],
                            rgb: 'G',
                          ),
                          const SizedBox(height: 5),
                          RGBContainer(
                            colorRGB: color.blue.toString(),
                            bgcolor: Colors.blue[100],
                            rgb: 'B',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.8,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(-4, 3),
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.32),
                          ),
                        ],
                      ),
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
