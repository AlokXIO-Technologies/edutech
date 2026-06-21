import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Courses",
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          _buildCourseCard(
            context,
            title: "Flutter Basics",
            progress: 0.60,
            percentage: "60%",
            icon: Icons.phone_android,
          ),

          const SizedBox(height: 16),

          _buildCourseCard(
            context,
            title: "Java Masterclass",
            progress: 0.35,
            percentage: "35%",
            icon: Icons.coffee,
          ),

          const SizedBox(height: 16),

          _buildCourseCard(
            context,
            title: "Spring Boot API",
            progress: 0.80,
            percentage: "80%",
            icon: Icons.rocket_launch,
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(
      BuildContext context, {
        required String title,
        required double progress,
        required String percentage,
        required IconData icon,
      }) {

    return Card(
      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Padding(
        padding:
        const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Row(
              children: [

                CircleAvatar(
                  radius: 24,
                  child: Icon(icon),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    title,
                    style:
                    const TextStyle(
                      fontSize: 20,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              "$percentage Completed",
              style: const TextStyle(
                fontWeight:
                FontWeight.w500,
              ),
            ),

            const SizedBox(height: 10),

            ClipRRect(
              borderRadius:
              BorderRadius.circular(
                10,
              ),

              child:
              LinearProgressIndicator(
                value: progress,
                minHeight: 10,
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                onPressed: () {

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(

                    SnackBar(
                      content: Text(
                        "Opening $title",
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
    );
  }
}