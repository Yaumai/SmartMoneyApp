import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'level_list_screen.dart';
import 'module_image.dart';
import 'module_title.dart';
import 'start_button.dart';
import 'module.dart';

class ModuleSlide extends StatelessWidget {
  final Module module;

  ModuleSlide({required this.module});

  @override
  Widget build(BuildContext context) {
    return Center(  // Центруем содержимое модуля
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Логотип модуля
          Image.asset(
            module.imagePath,
            width: 300,  // Задаем ширину (можно изменить по необходимости)
            height: 300, // Задаем высоту (можно изменить по необходимости)
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10), // Отступ между логотипом и названием
          // Название модуля
          Text(
            module.title,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2), // Отступ между названием и кнопкой
          // Кнопка для перехода к уровням модуля
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelListScreen(module: module),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15), // Размер кнопки
              textStyle: TextStyle(fontSize: 20), // Размер текста
            ),
            child: Text('Начать'),
          ),
        ],
      ),
    );
  }
}
