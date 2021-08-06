import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_colors/controller/random_controller.dart';
import 'package:random_colors/screens/details/details_screen.dart';

import 'package:random_colors/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RandomController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Random Colors',
        theme: ThemeData(),
        home: HomeScreen(),
        routes: <String, WidgetBuilder>{
          '/details': (BuildContext context) => DetailsScreen(),
        },
      ),
    );
  }
}
