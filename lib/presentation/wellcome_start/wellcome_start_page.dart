import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/core/neural_images_paths.dart';
import 'package:neural_trainer/presentation/wellcome_start/initial_onboarding/initial_onboarding_page.dart';
import 'package:neural_trainer/presentation/wellcome_start/onboardings/onboarding_page.dart';
import 'package:neural_trainer/presentation/wellcome_start/widgets/dots_indicators_and_signin_box.dart';
import 'package:neural_trainer/presentation/wellcome_start/widgets/move_your_mind_text.dart';

class WellcomeStartPage extends StatefulWidget {
  const WellcomeStartPage({super.key});

  @override
  State<WellcomeStartPage> createState() => _WellcomeStartPageState();
}

class _WellcomeStartPageState extends State<WellcomeStartPage> {
  final selectedPage = ValueNotifier<int>(0);
  final _controller = PageController();

  @override
  void didChangeDependencies() {
    precacheImage(NeuralImages.neuralLogo.image, context);
    precacheImage(NeuralImages.initialBackground.image, context);
    precacheImage(NeuralImages.connectBackground.image, context);
    precacheImage(NeuralImages.trainBackground.image, context);
    precacheImage(NeuralImages.analizeBackground.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          PageView(
            onPageChanged: (index) {
              selectedPage.value = index;
            },
            controller: _controller,
            children: const [
              InitialOnboarding(image: NeuralImages.initialBackground, logo: NeuralImages.neuralLogo),
              OnboardingPage(
                  image: NeuralImages.connectBackground,
                  title: "conecta",
                  description:
                      "Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo."),
              OnboardingPage(
                  image: NeuralImages.trainBackground,
                  title: "entrena",
                  description:
                      "Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico."),
              OnboardingPage(
                image: NeuralImages.analizeBackground,
                title: "analiza",
                description:
                    "Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.",
              ),
            ],
          ),
          Positioned(
            top: 0,
            child: ValueListenableBuilder<int>(
              valueListenable: selectedPage,
              builder: (context, value, _) {
                return value != 0 ? const MoveYourMindText() : const SizedBox();
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: ValueListenableBuilder<int>(
              valueListenable: selectedPage,
              builder: (context, value, _) {
                return DotsIndicatorAndSignIButtonBox(
                  selectedPage: value,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    selectedPage.dispose();
    super.dispose();
  }
}
