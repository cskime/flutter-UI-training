import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/list/kategori_list_item.dart';

class KategoriListItemView extends StatelessWidget {
  const KategoriListItemView(
      {super.key, required this.item, required this.onPressed});

  final KategoriListItem item;
  final void Function(KategoriListItem item) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(item),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFE5E5E5),
          borderRadius: BorderRadius.circular(4),
        ),
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(item.title),
            const Spacer(),
            SvgIconProvider.icon('icon-chevron-right'),
          ],
        ),
      ),
    );
  }
}
