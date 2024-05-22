import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/model/barang_item.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_counter.dart';

class BarangListItemView extends StatefulWidget {
  const BarangListItemView({
    super.key,
    required this.item,
    required this.width,
  });

  final BarangItem item;
  final double width;

  @override
  State<BarangListItemView> createState() => _BarangListItemViewState();
}

class _BarangListItemViewState extends State<BarangListItemView> {
  int currentCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 140,
            child: ColoredBox(color: Palette.primary),
          ),
          Padding(
            padding: const EdgeInsets.all(8).copyWith(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.category,
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.item.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${widget.item.description}\n',
                  style: const TextStyle(
                    color: Color(0xFF60626E),
                    fontSize: 8,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  'Rp ${widget.item.rp}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                BarangeCounter(
                  currentCount: currentCount,
                  onPressed: (count) => setState(() {
                    currentCount = count;
                  }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
