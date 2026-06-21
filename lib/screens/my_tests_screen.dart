import 'package:flutter/material.dart';

class MyTestsScreen extends StatelessWidget {
  const MyTestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tests"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          _buildTestCard(
            context,
            title: "Flutter Basics Quiz",
            questions: "20 Questions",
            duration: "15 Minutes",
            level: "Beginner",
            icon: Icons.phone_android,
          ),

          const SizedBox(height: 16),

          _buildTestCard(
            context,
            title: "Java Masterclass Quiz",
            questions: "25 Questions",
            duration: "20 Minutes",
            level: "Intermediate",
            icon: Icons.coffee,
          ),

          const SizedBox(height: 16),

          _buildTestCard(
            context,
            title: "Spring Boot Quiz",
            questions: "30 Questions",
            duration: "25 Minutes",
            level: "Advanced",
            icon: Icons.rocket_launch,
          ),
        ],
      ),
    );
  }

  Widget _buildTestCard(
      BuildContext context, {
        required String title,
        required String questions,
        required String duration,
        required String level,
        required IconData icon,
      }) {

    return Card(
      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),

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
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [

                const Icon(
                  Icons.help_outline,
                  size: 18,
                ),

                const SizedBox(width: 6),

                Text(questions),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [

                const Icon(
                  Icons.timer_outlined,
                  size: 18,
                ),

                const SizedBox(width: 6),

                Text(duration),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [

                const Icon(
                  Icons.bar_chart,
                  size: 18,
                ),

                const SizedBox(width: 6),

                Text(level),
              ],
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
                        "$title coming soon",
                      ),
                    ),
                  );
                },

                icon: const Icon(
                  Icons.play_arrow,
                ),

                label: const Text(
                  "Start Test",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}