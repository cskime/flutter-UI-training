import 'package:flutter/material.dart';

class AlertDot extends StatelessWidget {
  const AlertDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      decoration: BoxDecoration(
        color: const Color(0xffff3838),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
