import 'package:flutter/material.dart';
import 'package:pos_app/src/utils/separated_column.dart';

class ReceiptTotalListItem extends StatelessWidget {
  const ReceiptTotalListItem({
    super.key,
    required this.subtotalRp,
  });

  final int subtotalRp;
  final int lainnyaRp = 3000;

  static const textStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          child: SeparatedColumn(
            spacing: 12,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Subtotal', style: textStyle),
                  Text('Rp $subtotalRp', style: textStyle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Pajak dan biaya lainnya', style: textStyle),
                  Text('Rp $lainnyaRp', style: textStyle),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Harga', style: textStyle),
                  Text('Rp ${subtotalRp + lainnyaRp}', style: textStyle),
                ],
              ),
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
