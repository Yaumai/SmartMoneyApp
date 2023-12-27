import 'package:flutter/material.dart';

class ModuleTitle extends StatelessWidget {
  final int index;
  final String title;

  ModuleTitle({required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Модуль ${index + 1}: $title',
        style: const TextStyle(fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
