import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/beranda/widgets/alert_dot.dart';

class BerandaAppBar extends StatelessWidget {
  const BerandaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                style: TextStyle(
                  color: Palette.text,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'kasir Toko A',
                style: TextStyle(
                  color: Palette.subtext,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SvgIconProvider.icon('alert', color: Palette.text),
              const Positioned(
                top: 3,
                right: 4,
                child: AlertDot(),
              )
            ],
          )
        ],
      ),
    );
  }
}
