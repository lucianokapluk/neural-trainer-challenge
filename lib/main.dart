import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/onboarding/wellcome_start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neural Trainer',
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      home: const WellcomeStartPage(),
    );
  }
}
