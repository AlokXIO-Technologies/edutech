import 'package:flutter/material.dart';
import '../widgets/banner_slider.dart';
import '../data/course_repository.dart';
import '../models/course.dart';
import '../screens/courses_screen.dart';
import 'course_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Course> courses =
    CourseRepository.getCourses();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              const Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  0,
                ),

                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(
                      "👋 Welcome to EduTech",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Alok",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Learn Skills. Build Projects.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const BannerSlider(),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

                  children: [

                    const Text(
                      "Popular Courses",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    TextButton(
                      onPressed: () {

                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (context) =>
                            const CoursesScreen(),
                          ),
                        );
                      },

                      child: const Text(
                        "View All",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              ListView.builder(
                shrinkWrap: true,
                physics:
                const NeverScrollableScrollPhysics(),

                itemCount: courses.length,

                itemBuilder:
                    (context, index) {

                  final course =
                  courses[index];

                  return Card(
                    margin:
                    const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),

                    elevation: 4,

                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        20,
                      ),
                    ),

                    child: ListTile(
                      contentPadding:
                      const EdgeInsets.all(
                        16,
                      ),

                      leading:
                      const CircleAvatar(
                        child: Icon(
                          Icons.school,
                        ),
                      ),

                      title: Text(
                        course.title,
                        style:
                        const TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(
                        course.instructor,
                      ),

                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),

                      onTap: () {

                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder:
                                (context) =>
                                CourseDetailScreen(
                                  course:
                                  course,
                                ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}