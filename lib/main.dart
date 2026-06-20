import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const EduTechApp());
}

class EduTechApp extends StatefulWidget {
  const EduTechApp({super.key});

  @override
  State<EduTechApp> createState() =>
      _EduTechAppState();
}

class _EduTechAppState
    extends State<EduTechApp> {

  bool isDarkMode = false;

  void toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.light,
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.dark,
      ),

      themeMode:
      isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      home: SplashScreen(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
    );
  }
}