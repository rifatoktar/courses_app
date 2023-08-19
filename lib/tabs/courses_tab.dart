import 'package:flutter/material.dart';

class CoursesTab extends StatefulWidget {
  const CoursesTab({super.key});

  @override
  State<CoursesTab> createState() => _CoursesTabState();
}

class _CoursesTabState extends State<CoursesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text(
          "Available Courses is appearing here",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}