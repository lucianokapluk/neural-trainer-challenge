import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/wellcome_start/onboardings/widgets/bottom_gradient.dart';
import 'package:neural_trainer/presentation/wellcome_start/onboardings/widgets/onboarding_body.dart';

class OnboardingPage extends StatelessWidget {
  final Image image;
  final String title;
  final String description;
  const OnboardingPage({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        image,
        const BottomGradient(),
        OnboardingBody(title: title, description: description),
      ],
    );
  }
}
