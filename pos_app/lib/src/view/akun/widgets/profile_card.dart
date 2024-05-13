import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  final TextStyle textStyle = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xfff0f0f0),
              radius: 50,
              child: Icon(
                Icons.person_outline,
                color: Color(0xff7C7C7C),
                size: 32,
              ),
            ),
            const SizedBox(height: 13),
            Text(
              'Kasir',
              style: textStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Alex Parkinson',
              style: textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
