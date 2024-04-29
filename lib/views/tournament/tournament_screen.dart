import 'package:flutter/material.dart';
import 'package:inazuma_victory/widgets/CustomBottomNavigationBar.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Tournament Screen Content Goes Here'),
        ),
      ),
    );
  }
}