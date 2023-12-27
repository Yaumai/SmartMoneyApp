import 'package:flutter/material.dart';
import 'module.dart';
import 'level_screen.dart';

class StartButton extends StatelessWidget {
  final Module module;

  StartButton({required this.module});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LevelScreen(module: module)),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: const Text(
        'Начать',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
