import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/home/widgets/menu/menu.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.menu});

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.12),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgIconProvider.icon(menu.iconName),
          const SizedBox(height: 25),
          Text(
            menu.title,
            style: const TextStyle(
              color: Palette.text,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
