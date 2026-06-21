import 'package:flutter/material.dart';

import '../models/course.dart';

class CourseDetailScreen extends StatelessWidget {
  final Course course;

  const CourseDetailScreen({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Details"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: Image.asset(
                course.image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              course.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              course.price,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 3,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                children: [

                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text("Instructor"),
                    subtitle: Text(
                      course.instructor,
                    ),
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(Icons.schedule),
                    title: const Text("Duration"),
                    subtitle: Text(
                      course.duration,
                    ),
                  ),

                  const Divider(height: 1),

                  ListTile(
                    leading: const Icon(
                      Icons.workspace_premium,
                    ),
                    title: const Text("Validity"),
                    subtitle: Text(
                      course.validity,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "About Course",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              course.description,
              style: const TextStyle(
                height: 1.6,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "What You'll Learn",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(
                      "✔ Build real-world projects",
                    ),

                    SizedBox(height: 8),

                    Text(
                      "✔ Learn industry best practices",
                    ),

                    SizedBox(height: 8),

                    Text(
                      "✔ Gain practical experience",
                    ),

                    SizedBox(height: 8),

                    Text(
                      "✔ Complete hands-on assignments",
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.shopping_cart,
                ),

                label: Text(
                  "Buy Course • ${course.price}",
                ),

                onPressed: () {

                  ScaffoldMessenger.of(context)
                      .showSnackBar(

                    SnackBar(
                      content: Text(
                        "${course.title} purchase feature coming soon",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}