import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/dots.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/initial_onboarding_page.dart';
import 'package:neural_trainer/presentation/onboarding/widgets/onboarding_page.dart';

class WellcomeStartPage extends StatefulWidget {
  const WellcomeStartPage({super.key});

  @override
  State<WellcomeStartPage> createState() => _WellcomeStartPageState();
}

class _WellcomeStartPageState extends State<WellcomeStartPage> {
  Image? neauralLogo;
  Image? initialOnboarding;
  Image? onboardingImage2;
  Image? onboardingImage3;
  Image? onboardingImage4;
  int selectedPage = 0;
  final _controller = PageController();
  @override
  void didChangeDependencies() {
    neauralLogo = Image.asset(
      "assets/images/neural_logo.png",
    );
    initialOnboarding = Image.asset(
      "assets/images/initial_onboarding.png",
      fit: BoxFit.cover,
    );
    onboardingImage2 = Image.asset(
      "assets/images/connect_onboarding.png",
      fit: BoxFit.cover,
    );
    onboardingImage3 = Image.asset(
      "assets/images/train_onboarding.png",
      fit: BoxFit.cover,
    );
    onboardingImage4 = Image.asset(
      "assets/images/analyze_onboarding.png",
      fit: BoxFit.cover,
    );
    precacheImage(neauralLogo!.image, context);
    precacheImage(initialOnboarding!.image, context);
    precacheImage(onboardingImage2!.image, context);
    precacheImage(onboardingImage3!.image, context);
    precacheImage(onboardingImage4!.image, context);
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
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            controller: _controller,
            children: [
              InitialOnboarding(image: initialOnboarding!, logo: neauralLogo!),
              OnboardingPage(
                  image: onboardingImage2!,
                  title: "conecta",
                  description:
                      "Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo."),
              OnboardingPage(
                  image: onboardingImage3!,
                  title: "entrena",
                  description:
                      "Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico."),
              OnboardingPage(
                image: onboardingImage4!,
                title: "analize",
                description:
                    "Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.",
              ),
            ],
          ),
          selectedPage != 0 ? const Positioned(top: 0, child: MoveYourMindWidget()) : const SizedBox(),
          Positioned(bottom: 0, child: SignInButton(selectedPage: selectedPage))
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
    return const AnimatedOpacity(
      opacity: 1,
      duration: Duration(milliseconds: 500),
      child: Padding(
        padding: EdgeInsets.only(top: 48.0),
        child: Text(
          "#MOVEYOURMIND",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
        ),
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

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.selectedPage});
  final int selectedPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: DotsIndicator(
            selectedPage: selectedPage,
            itemCount: 4,
          ),
        ),
        InkWell(
          onTap: () {},
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin: const EdgeInsets.all(25.0),
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
        ),
      ],
    );
  }
}
