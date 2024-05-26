import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/models/product.dart';
import 'package:pos_app/src/view/keranjang/widgets/keranjang_product_counter.dart';

class KeranjangListItemView extends StatelessWidget {
  const KeranjangListItemView({
    super.key,
    required this.product,
    required this.currentCount,
    required this.onCountChanged,
    this.isFirstItem = false,
  });

  final Product product;
  final int currentCount;
  final void Function({
    required Product product,
    required int count,
  }) onCountChanged;
  final bool isFirstItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 57,
                height: 57,
                decoration: BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: const Color(0xfff0f0f0),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.category} | ${product.title}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product.description,
                      style: const TextStyle(fontSize: 8),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Rp ${product.rp} x $currentCount = Rp ${product.rp * 2}',
                      style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              KeranjangProductCounter(
                currentCount: currentCount,
                onPressed: (count) => onCountChanged(
                  product: product,
                  count: count,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Divider(height: 1),
        ),
        if (isFirstItem) const Divider(height: 1),
      ],
    );
  }
}
