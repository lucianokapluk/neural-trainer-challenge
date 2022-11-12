import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/onboarding_page.dart';

class InitialOnboarding extends StatelessWidget {
  final Image image;
  final Image logo;

  const InitialOnboarding({super.key, required this.image, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.expand,
      children: [image, logo, const NtExperienceText()],
    );
  }
}
