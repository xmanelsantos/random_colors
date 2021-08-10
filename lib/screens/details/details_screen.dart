import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'components/details_floating_button.dart';
import 'components/details_navigation_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
    );
    final Color color = Provider.of<RandomController>(context).kColor;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<RandomController>(
        builder: (context, value, child) {
          return Row(
            children: [
              Row(
                children: [
                  Text(color.toString().split('(0xff')[1].split(')')[0]),
                ],
              ),
              Spacer(),
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
          );
        },
      ),
      floatingActionButton: const DetailsFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: const DetailsNavigationBar(),
    );
  }
}
