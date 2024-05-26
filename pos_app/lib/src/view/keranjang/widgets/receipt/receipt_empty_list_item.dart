import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class ReceiptEmptyListItem extends StatelessWidget {
  const ReceiptEmptyListItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SvgIconProvider.icon('icon_keranjang_add'),
            ],
          ),
        ),
        const Positioned(
          child: Divider(height: 1),
        ),
      ],
    );
  }
}
