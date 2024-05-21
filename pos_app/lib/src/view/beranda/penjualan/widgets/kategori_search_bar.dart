import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class KategoriSearchBar extends StatelessWidget {
  const KategoriSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          children: [
            SvgIconProvider.icon('icon-search'),
            const SizedBox(width: 16),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Cari Barang',
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                ),
                style: TextStyle(fontSize: 12),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(width: 16),
            SvgIconProvider.icon('icon-barcode'),
          ],
        ),
      ),
    );
  }
}
