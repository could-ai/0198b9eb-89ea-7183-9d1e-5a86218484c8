import 'package:flutter/material.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'מסך הוספת תוכן',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
