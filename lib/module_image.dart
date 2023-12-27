import 'package:flutter/material.dart';

class ModuleImage extends StatelessWidget {
  final String imagePath;

  ModuleImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, height: 300, width: 300);
  }
}
