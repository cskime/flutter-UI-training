import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Palette.primary,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
