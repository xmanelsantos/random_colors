import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/controller/random_controller.dart';

import 'package:random_colors/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Colors',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: ChangeNotifierProvider(
        create: (context) => RandomController(),
        child: HomeScreen(),
      ),
    );
  }
}
