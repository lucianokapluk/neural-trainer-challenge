import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.selectedPage, required this.itemCount});
  final int selectedPage;
  final int itemCount;

  Widget _buildDot(int index) {
    return SizedBox(
      width: 25.0,
      child: Center(
          child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(104, 105, 104, 1),
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: selectedPage == index ? const Color.fromRGBO(22, 245, 129, 1) : Colors.transparent,
          ),
        ),
        height: 8,
        width: 8,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
