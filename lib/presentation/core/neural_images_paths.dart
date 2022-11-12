import 'package:flutter/material.dart';

class NeuralImages {
  NeuralImages._();

  static const Image neuralLogo = Image(
    image: AssetImage("assets/images/neural_logo.png"),
    gaplessPlayback: true,
  );
  static const Image initialBackground = Image(
    image: AssetImage("assets/images/initial_onboarding.png"),
    gaplessPlayback: true,
    fit: BoxFit.cover,
  );
  static const Image connectBackground = Image(
    image: AssetImage("assets/images/connect_onboarding.png"),
    gaplessPlayback: true,
    fit: BoxFit.cover,
  );
  static const Image trainBackground = Image(
    image: AssetImage("assets/images/train_onboarding.png"),
    gaplessPlayback: true,
    fit: BoxFit.cover,
  );
  static const Image analizeBackground = Image(
    image: AssetImage("assets/images/analyze_onboarding.png"),
    gaplessPlayback: true,
    fit: BoxFit.cover,
  );
}
