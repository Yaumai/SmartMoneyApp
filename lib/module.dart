import 'package:flutter/material.dart';

class Module {
  final int index;
  final String title;
  final String imagePath;
  final List<Level> levels;

  Module({
    required this.index,
    required this.title,
    required this.imagePath,
    required this.levels,
  });
}

class Level {
  final String title;
  final CarouselContent carouselContent;

  Level({
    required this.title,
    required this.carouselContent,
  });
}

class CarouselContent {
  final List<Widget> items;

  CarouselContent({
    required this.items,
  });
}
