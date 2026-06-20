import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Courses",
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.phone_android,
                ),
              ),

              title: const Text(
                "Flutter Basics",
              ),

              subtitle: const Text(
                "Progress: 60%",
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ),

          const SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.coffee,
                ),
              ),

              title: const Text(
                "Java Masterclass",
              ),

              subtitle: const Text(
                "Progress: 35%",
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ),

          const SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.rocket_launch,
                ),
              ),

              title: const Text(
                "Spring Boot API",
              ),

              subtitle: const Text(
                "Progress: 80%",
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}