// Fichier: lib/main.dart
import 'package:flutter/material.dart';
import 'package:inazuma_victory/widgets/CustomBottomNavigationBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomBottomNavigationBar(),
      title: 'Victory Road',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade400),
        useMaterial3: true
      ),
    );
  }
}
