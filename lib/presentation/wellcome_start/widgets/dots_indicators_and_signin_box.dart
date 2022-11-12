import 'package:flutter/material.dart';
import 'package:neural_trainer/presentation/wellcome_start/widgets/dots_indicators.dart';

class DotsIndicatorAndSignIButtonBox extends StatelessWidget {
  const DotsIndicatorAndSignIButtonBox({super.key, required this.selectedPage});
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
