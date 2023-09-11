import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const SurveyApp());
}

class SurveyApp extends StatelessWidget {
  const SurveyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Survey',
      home: HomeScreen(),
    );
  }
}
