import 'package:flutter/material.dart';
import 'package:inazuma_victory/widgets/CustomBottomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Home Screen Content Goes Here'),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}