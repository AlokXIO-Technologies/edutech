import 'package:flutter/material.dart';

class MaterialsScreen extends StatelessWidget {
  const MaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Study Materials",
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          _buildMaterialCard(
            context,
            title: "Flutter Notes",
            description:
            "Beginner to Advanced Flutter Guide",
            size: "12 MB",
          ),

          const SizedBox(height: 16),

          _buildMaterialCard(
            context,
            title: "Java Handbook",
            description:
            "Core Java Concepts and OOP",
            size: "8 MB",
          ),

          const SizedBox(height: 16),

          _buildMaterialCard(
            context,
            title: "Spring Boot Guide",
            description:
            "REST APIs and Backend Development",
            size: "15 MB",
          ),

          const SizedBox(height: 16),

          _buildMaterialCard(
            context,
            title: "React Essentials",
            description:
            "Frontend Development Notes",
            size: "10 MB",
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialCard(
      BuildContext context, {
        required String title,
        required String description,
        required String size,
      }) {

    return Card(
      elevation: 5,

      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Padding(
        padding:
        const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            Row(
              children: [

                Container(
                  padding:
                  const EdgeInsets.all(
                    12,
                  ),

                  decoration:
                  BoxDecoration(
                    color: Colors.red
                        .withValues(
                      alpha: 0.1,
                    ),

                    borderRadius:
                    BorderRadius
                        .circular(
                      12,
                    ),
                  ),

                  child: const Icon(
                    Icons.picture_as_pdf,
                    color: Colors.red,
                    size: 32,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                    children: [

                      Text(
                        title,
                        style:
                        const TextStyle(
                          fontSize: 18,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                        height: 4,
                      ),

                      Text(
                        size,
                        style:
                        const TextStyle(
                          color:
                          Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Text(description),

            const SizedBox(height: 20),

            Row(
              children: [

                Expanded(
                  child:
                  OutlinedButton.icon(
                    onPressed: () {

                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(

                        SnackBar(
                          content: Text(
                            "Opening $title",
                          ),
                        ),
                      );
                    },

                    icon: const Icon(
                      Icons.visibility,
                    ),

                    label: const Text(
                      "View",
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child:
                  ElevatedButton.icon(
                    onPressed: () {

                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(

                        SnackBar(
                          content: Text(
                            "Downloading $title",
                          ),
                        ),
                      );
                    },

                    icon: const Icon(
                      Icons.download,
                    ),

                    label: const Text(
                      "Download",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}