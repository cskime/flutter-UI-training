import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ChartPainter extends CustomPainter {
  final coordinatePadding = const EdgeInsets.only(
    top: 5,
    left: 33,
    right: 10,
    bottom: 20,
  );

  final valuesX = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final valuesY = ['0', '200', '400', '600', '800', '1000'];

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
    int countX = valuesX.length;
    int countY = valuesY.length;
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
    double dx = gridSize.width / (countX - 1);
    for (int index = 0; index < countX; index++) {
      final start = Offset(x + index * dx, y);
      final end =
          Offset(start.dx, gridSize.height + countY); // horizontal line 개수만큼 보정
      canvas.drawLine(start, end, paint);

      final text = valuesX[index];
      final textSpan = TextSpan(text: text, style: textStyle);
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      )..layout();
      final textOffset = Offset(
        start.dx - textPainter.width / 2,
        end.dy + 10,
      );
      textPainter.paint(canvas, textOffset);
    }

    // Draw horizontal
    double dy = gridSize.height / (countY - 1);
    for (int index = 0; index < countY; index++) {
      final start = Offset(x, y + index * dy);
      final end = Offset(start.dx + gridSize.width, start.dy);
      canvas.drawLine(start, end, paint);

      final text = valuesY.reversed.toList()[index];
      final textSpan = TextSpan(text: text, style: textStyle);
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      )..layout();
      final textOffset = Offset(
        start.dx - textPainter.width - 10,
        start.dy - textPainter.height / 2,
      );
      textPainter.paint(canvas, textOffset);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
