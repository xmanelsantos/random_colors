import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/random_controller.dart';
import 'screens/details/details_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/welcome/welcome_screen.dart';

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
          '/welcome': (BuildContext context) => WelcomeScreen(),
        },
      ),
    );
  }
}
