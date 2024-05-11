import 'package:flutter/material.dart';
import 'package:pos_app/design/components/alert_button/alert_button.dart';
import 'package:pos_app/design/palette.dart';

class BerandaAppBar extends StatelessWidget {
  const BerandaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
          AlertButton(),
        ],
      ),
    );
  }
}
