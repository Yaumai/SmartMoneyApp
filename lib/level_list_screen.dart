// lib/screens/level_list_screen.dart

import 'package:flutter/material.dart';
import 'level_detail_screen.dart';
import 'module.dart';

class LevelListScreen extends StatelessWidget {
  final Module module;

  LevelListScreen({required this.module});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(module.title),
      ),
      body: ListView.builder(
        itemCount: module.levels.length,
        itemBuilder: (context, index) {
          final level = module.levels[index];
          return ListTile(
            title: Text(level.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelDetailScreen(level: level),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
