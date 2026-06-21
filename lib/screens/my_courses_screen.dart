import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Courses"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          _buildCourseCard(
            context,
            image: "assets/courses/flutter.png",
            title: "Flutter Basics",
            progress: 0.60,
          ),

          const SizedBox(height: 16),

          _buildCourseCard(
            context,
            image: "assets/courses/java.png",
            title: "Java Masterclass",
            progress: 0.35,
          ),

          const SizedBox(height: 16),

          _buildCourseCard(
            context,
            image: "assets/courses/spring.png",
            title: "Spring Boot API",
            progress: 0.80,
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(
      BuildContext context, {
        required String image,
        required String title,
        required double progress,
      }) {

    final percentage =
    (progress * 100).toInt();

    return Card(
      elevation: 4,

      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(
              top: Radius.circular(20),
            ),

            child: AspectRatio(
              aspectRatio: 16 / 9,

              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  "$percentage% Completed",
                ),

                const SizedBox(height: 8),

                LinearProgressIndicator(
                  value: progress,
                  minHeight: 8,

                  borderRadius:
                  BorderRadius.circular(
                    10,
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton.icon(
                    onPressed: () {

                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(

                        SnackBar(
                          content: Text(
                            "Continue $title",
                          ),
                        ),
                      );
                    },

                    icon: const Icon(
                      Icons.play_arrow,
                    ),

                    label: const Text(
                      "Continue Learning",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}