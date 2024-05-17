import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/view/rekap_kas/widgets/chart/chart_painter.dart';

class ChartView extends StatelessWidget {
  const ChartView({
    super.key,
    required this.datas,
  });

  final List<List<double>> datas;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12).copyWith(bottom: 12),
        child: Column(
          children: [
            const Text(
              'Total Pendapatan',
              style: TextStyle(
                color: Palette.text,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Rp 100.000.000',
              style: TextStyle(
                color: Palette.text,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            AspectRatio(
              aspectRatio: 319 / 223,
              child: CustomPaint(
                painter: ChartPainter(datas: datas),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
