import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {

  final bool isDarkMode;

  final Function(bool) toggleTheme;

  const SplashScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),

          () {

        Navigator.pushReplacement(
          context,

          MaterialPageRoute(
            builder: (context) =>
                LoginScreen(
                  isDarkMode:
                  widget.isDarkMode,

                  toggleTheme:
                  widget.toggleTheme,
                ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: Text(
          "EduTech",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}