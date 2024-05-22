import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/utils/separated_row.dart';

class BarangeCounter extends StatelessWidget {
  const BarangeCounter({
    super.key,
    this.currentCount = 0,
    required this.onPressed,
  });

  final int currentCount;
  final void Function(int count) onPressed;

  @override
  Widget build(BuildContext context) {
    return SeparatedRow(
      spacing: 6,
      children: [
        _Button(
          iconData: Icons.remove,
          isActive: currentCount > 0,
          onPressed: () => onPressed(currentCount - 1),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 32,
            child: Center(
              child: Text(
                currentCount.toString(),
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        _Button(
          iconData: Icons.add,
          onPressed: () => onPressed(currentCount + 1),
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.iconData,
    this.isActive = true,
    required this.onPressed,
  });

  final IconData iconData;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isActive) return;
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Palette.primary.withOpacity(isActive ? 1 : 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        width: 32,
        height: 32,
        child: Center(
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
