import 'package:flutter/material.dart';

class NtExperienceText extends StatelessWidget {
  const NtExperienceText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 276,
        padding: const EdgeInsets.all(24),
        child: Column(
          children: const [
            Text(
              "COMENZÁ A VIVIR TU",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
            ),
            Text(
              "NT EXPERIENCE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(22, 245, 129, 1),
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.28),
            ),
          ],
        ),
      ),
    );
  }
}
