import 'package:flutter/material.dart';
import 'package:pos_app/design/components/alert_button/alert_dot.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgIconProvider.icon('alert', color: Palette.text),
        const Positioned(
          top: 3,
          right: 4,
          child: AlertDot(),
        )
      ],
    );
  }
}
