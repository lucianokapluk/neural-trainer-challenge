import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/dots.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/initial_onboarding_page.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/onboarding_page.dart';
import 'package:neural_trainer/presentation/static_image.dart';

class WellcomeStartPage extends StatefulWidget {
  const WellcomeStartPage({super.key});

  @override
  State<WellcomeStartPage> createState() => _WellcomeStartPageState();
}

class _WellcomeStartPageState extends State<WellcomeStartPage> {
  Image? neauralLogo;
  Image? initialOnboarding;
  Image? connectBackground;
  Image? trainBackground;
  Image? analizeBackground;
  int selectedPage = 0;
  final _controller = PageController();
  @override
  void didChangeDependencies() {
    neauralLogo = Image.asset(NeuralImages.neuralLogo);
    initialOnboarding = Image.asset(
      NeuralImages.initialBackground,
      fit: BoxFit.cover,
    );
    connectBackground = Image.asset(
      NeuralImages.connectBackground,
      fit: BoxFit.cover,
    );
    trainBackground = Image.asset(
      NeuralImages.trainBackground,
      fit: BoxFit.cover,
    );
    analizeBackground = Image.asset(
      NeuralImages.analizeBackground,
      fit: BoxFit.cover,
    );
    precacheImage(neauralLogo!.image, context);
    precacheImage(initialOnboarding!.image, context);
    precacheImage(connectBackground!.image, context);
    precacheImage(trainBackground!.image, context);
    precacheImage(analizeBackground!.image, context);
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
            physics: const ClampingScrollPhysics(),
            onPageChanged: (index) => setState(() {
              selectedPage = index;
            }),
            controller: _controller,
            children: [
              InitialOnboarding(image: initialOnboarding!, logo: neauralLogo!),
              OnboardingPage(
                  image: connectBackground!,
                  title: "conecta",
                  description:
                      "Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo."),
              OnboardingPage(
                  image: trainBackground!,
                  title: "entrena",
                  description:
                      "Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico."),
              OnboardingPage(
                image: analizeBackground!,
                title: "analize",
                description:
                    "Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.",
              ),
            ],
          ),
          selectedPage != 0 ? const Positioned(top: 0, child: MoveYourMindWidget()) : const SizedBox(),
          Positioned(bottom: 0, child: DotsIndicatorAndLogginButtonBox(selectedPage: selectedPage))
        ],
      ),
    );
  }
}

class MoveYourMindWidget extends StatelessWidget {
  const MoveYourMindWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 92.0),
      child: Text(
        "#MOVEYOURMIND",
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class BottomGradient extends StatelessWidget {
  const BottomGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 389,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black],
          ),
        ),
      ),
    );
  }
}

class DotsIndicatorAndLogginButtonBox extends StatelessWidget {
  const DotsIndicatorAndLogginButtonBox({super.key, required this.selectedPage});
  final int selectedPage;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DotsIndicator(
        selectedPage: selectedPage,
        itemCount: 4,
      ),
      const SignInButton()
    ]);
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0, top: 48.0),
          padding: const EdgeInsets.symmetric(vertical: 17.0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(22, 245, 129, 1),
            borderRadius: BorderRadius.circular(27),
          ),
          child: const Text(
            "INICIAR SESIÓN",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
