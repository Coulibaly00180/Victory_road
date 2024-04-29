import 'package:flutter/material.dart';
import 'package:inazuma_victory/widgets/CustomBottomNavigationBar.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Team Screen Content Goes Here'),
        ),
      ),
    );
  }
}