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

    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF4F46E5),
              Color(0xFF6366F1),
            ],
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,

            children: [

              Container(
                padding:
                const EdgeInsets.all(24),

                decoration:
                const BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.school,
                  color: Colors.white,
                  size: 80,
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "EduTech",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight:
                  FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Learn. Build. Succeed.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),

              const SizedBox(height: 40),

              const CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}