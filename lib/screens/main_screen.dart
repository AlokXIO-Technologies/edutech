import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'courses_screen.dart';
import 'profile_screen.dart';
import 'my_courses_screen.dart';

class MainScreen extends StatefulWidget {

  final bool isDarkMode;
  final Function(bool) toggleTheme;

  const MainScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  State<MainScreen> createState() =>
      _MainScreenState();
}

class _MainScreenState
    extends State<MainScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screens = [

      const HomeScreen(),

      const CoursesScreen(),

      const MyCoursesScreen(),

      ProfileScreen(
        isDarkMode:
        widget.isDarkMode,

        toggleTheme:
        widget.toggleTheme,
      ),
    ];

    return Scaffold(

      body: screens[currentIndex],

      bottomNavigationBar:
      NavigationBar(

        selectedIndex:
        currentIndex,

        onDestinationSelected:
            (index) {

          setState(() {

            currentIndex =
                index;

          });
        },

        destinations: const [

          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: 'Courses',
          ),

          NavigationDestination(
            icon: Icon(Icons.school),
            label: 'My Courses',
          ),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}