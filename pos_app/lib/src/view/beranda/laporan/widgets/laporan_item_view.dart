import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/beranda/laporan/widgets/laporan_item.dart';

class LaporanItemView extends StatelessWidget {
  const LaporanItemView({super.key, required this.item});

  final LaporanItem item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SvgIconProvider.icon('icon-chevron-right'),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 16,
          right: 16,
          bottom: 0,
          child: Divider(height: 1),
        ),
      ],
    );
  }
}
