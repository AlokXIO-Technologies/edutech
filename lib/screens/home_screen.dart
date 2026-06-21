import 'package:flutter/material.dart';
import 'courses_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              const Text(
                "👋 Welcome Back",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Alok",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Continue learning today",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                children: [

                  Expanded(
                    child: _buildStatCard(
                      "Courses",
                      "4",
                      Icons.menu_book,
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: _buildStatCard(
                      "Enrolled",
                      "3",
                      Icons.school,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              _buildStatCard(
                "Overall Progress",
                "58%",
                Icons.trending_up,
              ),

              const SizedBox(height: 30),

              const Text(
                "Continue Learning",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),

              Card(
                elevation: 4,

                shape:
                RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(
                    20,
                  ),
                ),

                child: Padding(
                  padding:
                  const EdgeInsets.all(
                    20,
                  ),

                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                    children: [

                      const Text(
                        "Flutter Basics",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                        height: 12,
                      ),

                      const Text(
                        "60% Completed",
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      ClipRRect(
                        borderRadius:
                        BorderRadius
                            .circular(
                          10,
                        ),

                        child:
                        const LinearProgressIndicator(
                          value: 0.6,
                          minHeight: 8,
                        ),
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
                    Icons.school,
                  ),

                  label: const Text(
                    "Explore Courses",
                  ),

                  onPressed: () {

                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder:
                            (context) =>
                        const CoursesScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildStatCard(
      String title,
      String value,
      IconData icon,
      ) {

    return Card(
      elevation: 4,

      shape:
      RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Padding(
        padding:
        const EdgeInsets.all(20),

        child: Column(
          children: [

            Icon(
              icon,
              size: 32,
            ),

            const SizedBox(height: 10),

            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            Text(title),
          ],
        ),
      ),
    );
  }
}