import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class KategoriListItemView extends StatelessWidget {
  const KategoriListItemView({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFE5E5E5),
          borderRadius: BorderRadius.circular(4),
        ),
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(title),
            const Spacer(),
            SvgIconProvider.icon('icon-chevron-right'),
          ],
        ),
      ),
    );
  }
}
