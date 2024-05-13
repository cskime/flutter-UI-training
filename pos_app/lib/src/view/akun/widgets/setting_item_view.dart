import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/akun/models/setting_item.dart';

class SettingItemView extends StatelessWidget {
  const SettingItemView({
    super.key,
    required this.item,
  });

  final SettingItem item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              SvgIconProvider.icon(item.iconName),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.title,
                  style: const TextStyle(
                    color: Palette.text,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              const Icon(
                Icons.chevron_right,
                size: 24,
                color: Palette.text,
              )
            ],
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Divider(height: 1),
        ),
      ],
    );
  }
}
