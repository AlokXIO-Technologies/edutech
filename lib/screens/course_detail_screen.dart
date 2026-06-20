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

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer,
                borderRadius:
                BorderRadius.circular(20),
              ),

              child: Column(
                children: [

                  const Icon(
                    Icons.menu_book,
                    size: 60,
                  ),

                  const SizedBox(height: 12),

                  Text(
                    course.title,
                    textAlign: TextAlign.center,

                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text(
                  "Instructor",
                ),
                subtitle: Text(
                  course.instructor,
                ),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.access_time,
                ),
                title: const Text(
                  "Duration",
                ),
                subtitle: Text(
                  course.duration,
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "About Course",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              course.description,
              style: const TextStyle(
                height: 1.5,
              ),
            ),

            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                icon: const Icon(
                  Icons.school,
                ),

                label: const Text(
                  "Enroll Now",
                ),

                onPressed: () {

                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    SnackBar(
                      content: Text(
                        "Enrolled in ${course.title}",
                      ),
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