import 'package:flutter/material.dart';

class CarouselContent {
  final List<Widget> items;
  final List<Question> questions;

  CarouselContent({required this.items, required this.questions});
}

class Question {
  final String questionText;
  final List<String> answers;
  final int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.answers,
    required this.correctAnswerIndex,
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
