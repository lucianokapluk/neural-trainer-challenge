import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 389,
        padding: const EdgeInsets.only(top: 35, left: 25, right: 25, bottom: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color.fromRGBO(22, 245, 129, 1),
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.28),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.2, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
