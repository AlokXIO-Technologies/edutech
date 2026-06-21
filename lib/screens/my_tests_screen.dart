import 'package:flutter/material.dart';

class MyTestsScreen extends StatelessWidget {
  const MyTestsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tests"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          Card(
            child: ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text("Flutter Quiz"),
              subtitle: const Text("20 Questions"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Test Feature Coming Soon",
                      ),
                    ),
                  );
                },
                child: const Text("Start"),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text("Java Quiz"),
              subtitle: const Text("15 Questions"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Test Feature Coming Soon",
                      ),
                    ),
                  );
                },
                child: const Text("Start"),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: const Icon(Icons.quiz),
              title: const Text("Spring Boot Quiz"),
              subtitle: const Text("25 Questions"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Test Feature Coming Soon",
                      ),
                    ),
                  );
                },
                child: const Text("Start"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}