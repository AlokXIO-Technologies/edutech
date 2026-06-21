import 'package:flutter/material.dart';

class MaterialsScreen extends StatelessWidget {
  const MaterialsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Study Materials"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
              ),
              title: const Text(
                "Flutter Notes.pdf",
              ),
              subtitle: const Text(
                "12 MB",
              ),
              trailing: const Icon(
                Icons.download,
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
              ),
              title: const Text(
                "Java Handbook.pdf",
              ),
              subtitle: const Text(
                "8 MB",
              ),
              trailing: const Icon(
                Icons.download,
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
              ),
              title: const Text(
                "Spring Boot Guide.pdf",
              ),
              subtitle: const Text(
                "15 MB",
              ),
              trailing: const Icon(
                Icons.download,
              ),
            ),
          ),
        ],
      ),
    );
  }
}