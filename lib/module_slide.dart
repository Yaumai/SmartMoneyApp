import 'package:flutter/material.dart';
import 'module_image.dart';
import 'module_title.dart';
import 'start_button.dart';
import 'module.dart';

class ModuleSlide extends StatelessWidget {
  final Module module;

  ModuleSlide({required this.module});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ModuleImage(imagePath: module.imagePath),
        ModuleTitle(index: module.index, title: module.title),
        StartButton(module: module),
      ],
    );
  }
}
