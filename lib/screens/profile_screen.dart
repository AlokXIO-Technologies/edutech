import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../main.dart';

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

            CircleAvatar(
              radius: 55,
              backgroundColor:
              Theme.of(context)
                  .colorScheme
                  .primaryContainer,

              child: const Icon(
                Icons.person,
                size: 60,
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
              "Software Developer",
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
              child: ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text("Achievements"),
                subtitle: Text("Completed 3 Tests"),
              ),

            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text("EduTech"),
                subtitle: Text("Version 1.0.0"),
              ),
            ),
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

              child: FilledButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,

                    MaterialPageRoute(
                      builder: (context) =>
                      const EduTechApp(),
                    ),

                        (route) => false,
                  );
                },
                icon: Icon(Icons.logout),
                label: Text("Logout"),
              )
            ),
          ],
        ),
      ),
    );
  }
}