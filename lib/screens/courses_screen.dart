import 'package:flutter/material.dart';
import 'course_detail_screen.dart';
import '../data/course_repository.dart';
import '../models/course.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Course> courses =
    CourseRepository.getCourses();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
      ),

      body: ListView.builder(
        itemCount: courses.length,

        itemBuilder: (context, index) {

          final course = courses[index];
          return Card(
            margin: const EdgeInsets.all(8),

            child: ListTile(
              title: Text(course.title),
              subtitle: Text(course.instructor),

              onTap: () {

                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) =>
                        CourseDetailScreen(
                          course: course,
                        ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}