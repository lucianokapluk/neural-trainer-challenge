import 'package:flutter/material.dart';

class MoveYourMindText extends StatelessWidget {
  const MoveYourMindText({
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
