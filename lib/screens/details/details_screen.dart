import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/controller/random_controller.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Provider.of<RandomController>(context).kColor;
    return Scaffold(
      appBar: AppBar(
        title: Text('Color'),
        backgroundColor: color,
      ),
      body: Consumer<RandomController>(
        builder: (context, value, child) {
          return Container(
            color: color,
          );
        },
      ),
    );
  }
}
