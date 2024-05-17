import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pos_app/design/palette.dart';

class ChartPainter extends CustomPainter {
  ChartPainter({
    required this.datas,
  }) : yValues = _calculateYValues(datas);

  final List<List<double>> datas;
  final xValues = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final List<String> yValues;

  static List<String> _calculateYValues(List<List<double>> datas) {
    final maxData = datas.expand((element) => element).reduce(max);
    final numberOfDigits = maxData.toInt().toString().length;
    final divider = numberOfDigits > 2 ? pow(10, numberOfDigits - 1) : 1;
    var maxValue = maxData / divider;
    final offset = 2 - maxValue % 2;
    maxValue = (maxValue + offset) * divider;
    final unit = maxValue / 5;
    return List.generate(6, (index) => '${(index * unit).toInt()}');
  }

  final coordinatePadding = const EdgeInsets.only(
    top: 5,
    left: 33,
    right: 10,
    bottom: 20,
  );

  @override
  void paint(Canvas canvas, Size size) {
    _drawGrid(canvas, size);
  }

  void _drawGrid(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xfff0f0f0)
      ..strokeWidth = 1;

    // Grid metrics
    final gridOrigin = Point<double>(
      coordinatePadding.left,
      coordinatePadding.top,
    );
    int xCount = xValues.length;
    int yCount = yValues.length;
    final gridSize = Size(
      size.width - coordinatePadding.horizontal,
      size.height - coordinatePadding.vertical,
    );
    var x = gridOrigin.x;
    var y = gridOrigin.y;

    // Text metrics
    const textStyle = TextStyle(
      color: Color(0xffa3a3a3),
      fontSize: 10,
      height: 1,
    );

    // Draw vertical
    double dx = gridSize.width / (xCount - 1);
    for (int index = 0; index < xCount; index++) {
      final start = Offset(x + index * dx, y);
      // horizontal line 개수만큼 보정
      final end = Offset(start.dx, gridSize.height + yCount);
      canvas.drawLine(start, end, paint);
      _drawText(
        canvas,
        text: xValues[index],
        textStyle: textStyle,
        offsetBuilder: (size) => Offset(
          start.dx - size.width / 2,
          end.dy + 10,
        ),
      );
    }

    // Draw horizontal
    double dy = gridSize.height / (yCount - 1);
    for (int index = 0; index < yCount; index++) {
      final start = Offset(x, y + index * dy);
      final end = Offset(start.dx + gridSize.width, start.dy);
      canvas.drawLine(start, end, paint);
      final text = yValues.reversed.toList()[index];
      _drawText(
        canvas,
        text: text,
        textStyle: textStyle,
        offsetBuilder: (size) => Offset(
          start.dx - size.width - 10,
          start.dy - size.height / 2,
        ),
      );
    }

    _drawDot(canvas, xCount, yCount, x, y, dx, dy, gridSize);
  }

  void _drawText(
    Canvas canvas, {
    required String text,
    required TextStyle textStyle,
    required Offset Function(Size) offsetBuilder,
  }) {
    final painter = TextPainter(
      text: TextSpan(text: text, style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();
    Offset textOffset = offsetBuilder(painter.size);
    painter
      ..paint(canvas, textOffset)
      ..dispose();
  }

  void _drawDot(
    Canvas canvas,
    int xCount,
    int yCount,
    double x,
    double y,
    double dx,
    double dy,
    Size gridSize,
  ) {
    for (int indexX = 0; indexX < xCount; indexX++) {
      for (int indexY = 0; indexY < yCount; indexY++) {
        final paint = Paint()
          ..style = PaintingStyle.fill
          ..color = Palette.primary;
        const radius = 4.0;
        final yUnit = gridSize.height / double.parse(yValues.last);
        final center = Offset(
          x,
          y + (double.parse(yValues.last) - 500) * yUnit,
        );
        canvas.drawCircle(center, radius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant ChartPainter oldDelegate) {
    return oldDelegate.datas != datas;
  }
}
