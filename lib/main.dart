import 'package:flutter/material.dart';
import 'package:youngdev_interne_calculator_task/Home_screen.dart';

import 'App_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Appcolors.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Appcolors.primaryColor,
        ),
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

