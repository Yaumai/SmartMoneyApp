import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_screen.dart';
import 'module_carousel.dart';

class ModuleCarouselScreen extends StatelessWidget {
  const ModuleCarouselScreen({super.key});

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('remember_me');
    await prefs.remove('username');
    await prefs.remove('password');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Модули обучения'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: ModuleCarousel(),
    );
  }
}