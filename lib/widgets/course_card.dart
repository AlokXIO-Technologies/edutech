import 'package:flutter/material.dart';

import '../models/course.dart';
import '../screens/course_detail_screen.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
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
                course.image,
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
                  course.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  course.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 12),

                Text(
                  "⏳ ${course.validity}",
                ),

                const SizedBox(height: 16),

                Row(
                  children: [

                    Expanded(
                      child: Text(
                        course.price,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {

                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(

                          SnackBar(
                            content: Text(
                              "${course.title} coming soon",
                            ),
                          ),
                        );
                      },

                      child: const Text(
                        "Buy Now",
                      ),
                    ),

                    IconButton(
                      onPressed: () {

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

                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}