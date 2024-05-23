import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';

class BarangTotalCountLabel extends StatelessWidget {
  const BarangTotalCountLabel({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Palette.primary,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
