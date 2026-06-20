import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const EduTechApp());
}

class EduTechApp extends StatelessWidget {
  const EduTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
    );
  }
}