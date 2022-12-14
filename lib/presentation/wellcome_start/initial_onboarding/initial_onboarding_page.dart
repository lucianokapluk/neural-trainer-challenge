import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/wellcome_start/initial_onboarding/widgets/nt_experience_text.dart';

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
