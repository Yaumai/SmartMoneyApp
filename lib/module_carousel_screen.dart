import 'package:flutter/material.dart';
import 'module_carousel.dart';

class ModuleCarouselScreen extends StatelessWidget {
  const ModuleCarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Модули обучения'),
      ),
      body: ModuleCarousel(),
    );
  }
}
