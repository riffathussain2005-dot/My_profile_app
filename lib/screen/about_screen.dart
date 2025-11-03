import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text("Education",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("BS Computer Science - Karakoram International University"),
          SizedBox(height: 20),
          Text("Skills",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Wrap(
            spacing: 8,
            children: [
              Chip(label: Text("Flutter")),
              Chip(label: Text("Python")),
              Chip(label: Text("C++")),
              Chip(label: Text("UI/UX Design")),
            ],
          ),
          SizedBox(height: 20),
          Text("Hobbies",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Reading, Coding, and exploring new tech trends."),
        ],
      ),
    );
  }
}
