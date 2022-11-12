import 'package:flutter/material.dart';

class DotsIndicator extends AnimatedWidget {
  const DotsIndicator({
    super.key,
    required this.controller,
    required this.itemCount,
  }) : super(listenable: controller);
  final PageController controller;
  final int itemCount;

  Widget _buildDot(int index) {
    final idSelected = index == (controller.page?.round() ?? controller.initialPage);

    return SizedBox(
      width: 25.0,
      child: Center(
          child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(104, 105, 104, 1),
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: idSelected ? const Color.fromRGBO(22, 245, 129, 1) : const Color.fromRGBO(104, 105, 104, 1),
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
