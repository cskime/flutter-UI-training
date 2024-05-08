import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.iconName,
    required this.title,
    required this.color,
    required this.onPressed,
  });

  final String iconName;
  final String title;
  final Color color;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgIconProvider.icon(
              iconName,
              color: color,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
