import 'package:flutter/material.dart';
import 'courses_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            const SizedBox(height: 20),

            const Text(
              "👋 Welcome Back",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Alok",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Continue learning today",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 4,

              shape:
              RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20),
              ),

              child: Container(
                width: double.infinity,
                padding:
                const EdgeInsets.all(20),

                child: const Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(
                      "📚 4 Courses Available",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Start your learning journey today.",
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                icon:
                const Icon(Icons.school),

                label:
                const Text("Explore Courses"),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CoursesScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}