import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  final bool isDarkMode;
  final Function(bool) toggleTheme;

  const ProfileScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Alok Verma",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "Flutter Learner",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Email"),
                subtitle: const Text(
                  "alok@example.com",
                ),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text("Enrolled Courses"),
                subtitle: const Text("4 Courses"),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              child: SwitchListTile(
                secondary: const Icon(
                  Icons.dark_mode,
                ),
                title: const Text(
                  "Dark Mode",
                ),
                value: isDarkMode,
                onChanged: toggleTheme,
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(
                onPressed: () {},

                icon: const Icon(Icons.logout),

                label: const Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}