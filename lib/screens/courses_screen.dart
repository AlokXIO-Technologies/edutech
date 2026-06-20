import 'package:flutter/material.dart';

import '../data/course_repository.dart';
import '../models/course.dart';
import 'course_detail_screen.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() =>
      _CoursesScreenState();
}

class _CoursesScreenState
    extends State<CoursesScreen> {

  final List<Course> allCourses =
  CourseRepository.getCourses();

  late List<Course> filteredCourses;

  String selectedCategory = "All";

  String searchQuery = "";

  @override
  void initState() {
    super.initState();

    filteredCourses = allCourses;
  }

  void applyFilters() {

    List<Course> tempCourses =
        allCourses;

    if (selectedCategory != "All") {

      tempCourses =
          tempCourses.where((course) {

            return course.title
                .toLowerCase()
                .contains(
              selectedCategory
                  .toLowerCase(),
            );

          }).toList();
    }

    if (searchQuery.isNotEmpty) {

      tempCourses =
          tempCourses.where((course) {

            return course.title
                .toLowerCase()
                .contains(
              searchQuery
                  .toLowerCase(),
            );

          }).toList();
    }

    setState(() {

      filteredCourses = tempCourses;

    });
  }

  void searchCourses(
      String query,
      ) {

    searchQuery = query;

    applyFilters();
  }

  void filterByCategory(
      String category,
      ) {

    selectedCategory = category;

    applyFilters();
  }

  Widget buildChip(
      String label,
      ) {

    return ChoiceChip(

      label: Text(label),

      selected:
      selectedCategory == label,

      onSelected: (_) {

        filterByCategory(label);

      },
    );
  }

  IconData getCourseIcon(
      String title,
      ) {

    if (title.contains("Flutter")) {
      return Icons.phone_android;
    }

    if (title.contains("Java")) {
      return Icons.coffee;
    }

    if (title.contains("Spring")) {
      return Icons.rocket_launch;
    }

    if (title.contains("React")) {
      return Icons.code;
    }

    return Icons.menu_book;
  }

  @override
  Widget build(BuildContext context) {

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
            padding: const EdgeInsets.all(
              16,
            ),

            child: TextField(

              onChanged: (value) {

                searchCourses(value);

              },

              decoration: InputDecoration(
                hintText:
                "Search courses...",

                prefixIcon:
                const Icon(
                  Icons.search,
                ),

                border:
                OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(
                    16,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 16,
            ),

            child: Wrap(
              spacing: 8,
              runSpacing: 8,

              children: [

                buildChip("All"),

                buildChip("Flutter"),

                buildChip("Java"),

                buildChip("Spring"),

                buildChip("React"),
              ],
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          Expanded(

            child:
            filteredCourses.isEmpty

                ? const Center(
              child: Text(
                "No Courses Found",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )

                : ListView.builder(

              padding:
              const EdgeInsets
                  .only(
                bottom: 16,
              ),

              itemCount:
              filteredCourses
                  .length,

              itemBuilder:
                  (
                  context,
                  index,
                  ) {

                final course =
                filteredCourses[
                index];

                return Card(

                  margin:
                  const EdgeInsets
                      .symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),

                  elevation: 4,

                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius
                        .circular(
                      20,
                    ),
                  ),

                  child: ListTile(

                    contentPadding:
                    const EdgeInsets
                        .all(
                      16,
                    ),

                    leading:
                    CircleAvatar(
                      radius: 24,

                      child: Icon(
                        getCourseIcon(
                          course.title,
                        ),
                      ),
                    ),

                    title: Text(
                      course.title,

                      style:
                      const TextStyle(
                        fontWeight:
                        FontWeight
                            .bold,

                        fontSize: 18,
                      ),
                    ),

                    subtitle:
                    Padding(

                      padding:
                      const EdgeInsets
                          .only(
                        top: 8,
                      ),

                      child:
                      Column(

                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                        mainAxisSize:
                        MainAxisSize
                            .min,

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

                    trailing:
                    const Icon(
                      Icons
                          .arrow_forward_ios,
                      size: 18,
                    ),

                    onTap: () {

                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder:
                              (
                              context,
                              ) =>
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
          ),
        ],
      ),
    );
  }
}