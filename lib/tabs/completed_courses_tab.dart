import 'package:flutter/material.dart';

class CompletedCoursesTab extends StatefulWidget {
  const CompletedCoursesTab({super.key});

  @override
  State<CompletedCoursesTab> createState() => _CompletedCoursesTabState();
}

class _CompletedCoursesTabState extends State<CompletedCoursesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Completed Courses is appearing here",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
