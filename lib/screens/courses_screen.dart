import 'package:flutter/material.dart';
import 'course_detail_screen.dart';
import '../data/course_repository.dart';
import '../models/course.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  IconData getCourseIcon(String title) {
    if (title.contains("Flutter")) {
      return Icons.phone_android;
    } else if (title.contains("Java")) {
      return Icons.coffee;
    } else if (title.contains("Spring")) {
      return Icons.rocket_launch;
    } else if (title.contains("React")) {
      return Icons.code;
    }

    return Icons.menu_book;
  }

  @override
  Widget build(BuildContext context) {
    final List<Course> courses =
    CourseRepository.getCourses();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Explore Courses",
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search courses...",
                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(16),
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),

              itemCount: courses.length,

              itemBuilder: (context, index) {
                final course = courses[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),

                  elevation: 4,

                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20),
                  ),

                  child: ListTile(
                    contentPadding:
                    const EdgeInsets.all(16),

                    leading: CircleAvatar(
                      radius: 24,
                      child: Icon(
                        getCourseIcon(course.title),
                      ),
                    ),

                    title: Text(
                      course.title,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    subtitle: Padding(
                      padding:
                      const EdgeInsets.only(
                        top: 8,
                      ),

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        mainAxisSize:
                        MainAxisSize.min,

                        children: [

                          Text(
                            "👨‍🏫 ${course.instructor}",
                          ),

                          const SizedBox(
                            height: 4,
                          ),

                          Text(
                            "⏱ ${course.duration}",
                          ),
                        ],
                      ),
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),

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
          ),
        ],
      ),
    );
  }
}