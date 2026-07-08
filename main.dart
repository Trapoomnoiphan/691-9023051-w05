import 'package:flutter/material.dart';
import 'screens/car_list_screen.dart';

void main() {
  runApp(const Gt3RacingApp());
}

class Gt3RacingApp extends StatelessWidget {
  const Gt3RacingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GT3 Car Viewer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const Gt3CarListScreen(),
    );
  }
}