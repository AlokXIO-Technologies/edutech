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
        title: const Text("Course Detail"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              course.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              "Instructor: ${course.instructor}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "Duration: ${course.duration}",
            ),

            const SizedBox(height: 12),

            Text(
              course.description,
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Enrolled in ${course.title}",
                      ),
                    ),
                  );
                },
                child: const Text("Enroll Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}