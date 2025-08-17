import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'מסך פרוייקטים',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
