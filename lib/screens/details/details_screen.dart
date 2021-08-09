import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/constants.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'components/details_floating_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Provider.of<RandomController>(context).kColor;
    return Scaffold(
      body: Consumer<RandomController>(
        builder: (context, value, child) {
          return Container(
            color: color,
          );
        },
      ),
      floatingActionButton: const DetailsFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        elevation: 15,
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.only(
            left: kDefaultPadding * 3,
            right: kDefaultPadding * 3,
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              IconButton(icon: const Icon(Icons.list), onPressed: () {}),
              const SizedBox(
                height: 60,
                width: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
