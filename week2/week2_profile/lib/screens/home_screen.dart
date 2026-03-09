import 'package:flutter/material.dart';
import '../widgets/student_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Profile')),
      body: const Center(
        child: StudentCard(
          name: 'Sitha Huoth',
          major: 'Software Engineering',
          year: 3,
        ),
      ),
    );
  }
}