import 'package:flutter/material.dart';
import 'level_carousel_screen.dart';
import 'module.dart';

class LevelScreen extends StatelessWidget {
  final Module module;

  LevelScreen({required this.module});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Модуль ${module.index + 1}: Уровни'),
      ),
      body: Column(
        children: module.levels.map((level) {
          return ListTile(
            title: Text(
              level.title,
              style: const TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelCarouselScreen(
                    carouselContent: level.carouselContent,
                    levelTitle: level.title,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
