// Fichier: lib/main.dart
import 'package:flutter/material.dart';
import 'package:inazuma_victory/router.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Victory Road',
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade400),
        useMaterial3: true
      ),
    );
  }
}
