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

  static const xCount = 7;
  static const yCount = 6;

  static List<String> _calculateYValues(List<List<double>> datas) {
    final maxData = datas.expand((element) => element).reduce(max);
    final numberOfDigits = maxData.toInt().toString().length;
    final divider = numberOfDigits > 2 ? pow(10, numberOfDigits - 1) : 1;
    var maxValue = maxData / divider;
    final offset = 2 - maxValue % 2;
    maxValue = (maxValue + offset) * divider;
    final unit = maxValue / (yCount - 1);
    return List.generate(yCount, (index) => '${(index * unit).toInt()}');
  }

  final coordinatePadding = const EdgeInsets.only(
    top: 5,
    left: 33,
    right: 10,
    bottom: 20,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final gridSize = Size(
      size.width - coordinatePadding.horizontal,
      size.height - coordinatePadding.vertical,
    );
    final (xOffsets, yOffsets) = _drawGrid(canvas, gridSize);
    _drawTexts(canvas, xValues, yValues, xOffsets, yOffsets);
    _drawGraph(canvas, datas, xOffsets, yOffsets, gridSize);
  }

  (List<Offset>, List<Offset>) _drawGrid(Canvas canvas, Size gridSize) {
    List<Offset> xOffsets = [];
    List<Offset> yOffsets = [];

    final paint = Paint()
      ..color = const Color(0xfff0f0f0)
      ..strokeWidth = 1;

    // Grid metrics
    final gridOrigin = Point<double>(
      coordinatePadding.left,
      coordinatePadding.top,
    );
    int yCount = yValues.length;
    var x = gridOrigin.x;
    var y = gridOrigin.y;

    // Draw vertical
    double dx = gridSize.width / (xCount - 1);
    for (int index = 0; index < xCount; index++) {
      final start = Offset(x + index * dx, y);
      // horizontal line 개수만큼 보정
      final end = Offset(start.dx, gridSize.height + yCount);
      canvas.drawLine(start, end, paint);
      xOffsets.add(end);
    }

    // Draw horizontal
    double dy = gridSize.height / (yCount - 1);
    for (int index = 0; index < yCount; index++) {
      final start = Offset(x, y + index * dy);
      final end = Offset(start.dx + gridSize.width, start.dy);
      canvas.drawLine(start, end, paint);
      yOffsets.add(start);
    }

    return (xOffsets, yOffsets);
  }

  void _drawTexts(
    Canvas canvas,
    List<String> xValues,
    List<String> yValues,
    List<Offset> xOffsets,
    List<Offset> yOffsets,
  ) {
    const textStyle = TextStyle(
      color: Color(0xffa3a3a3),
      fontSize: 10,
      height: 1,
    );

    for (int index = 0; index < xCount; index++) {
      Offset xOffset = xOffsets[index];
      _drawText(
        canvas,
        text: xValues[index],
        textStyle: textStyle,
        offsetBuilder: (size) => Offset(
          xOffset.dx - size.width / 2,
          xOffset.dy + 10,
        ),
      );
    }

    for (int index = 0; index < yCount; index++) {
      Offset yOffset = yOffsets[index];
      _drawText(
        canvas,
        text: yValues.reversed.toList()[index],
        textStyle: textStyle,
        offsetBuilder: (size) => Offset(
          yOffset.dx - size.width - 10,
          yOffset.dy - size.height / 2,
        ),
      );
    }
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

  void _drawGraph(
    Canvas canvas,
    List<List<double>> datas,
    List<Offset> xOffsets,
    List<Offset> yOffsets,
    Size gridSize,
  ) {
    final dotPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Palette.primary;
    const radius = 4.0;

    final pathPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Palette.primary;
    final pathSegmentWidth = (gridSize.width / xOffsets.length) / 1.8;

    for (List<double> gridDatas in datas) {
      List<Offset> points = [];
      for (int index = 0; index < xCount; index++) {
        final data = gridDatas[index];
        final x = xOffsets[index].dx;
        final y = yOffsets[0].dy;
        final yUnit = gridSize.height / double.parse(yValues.last);
        final center = Offset(
          x,
          y + (double.parse(yValues.last) - data) * yUnit,
        );
        canvas.drawCircle(center, radius, dotPaint);
        points.add(center);
      }

      final path = Path()..moveTo(points.first.dx, points.first.dy);
      for (int index = 1; index < points.length; index++) {
        final currentPoint = points[index - 1];
        final nextPoint = points[index];
        final controlPoint1 =
            Offset(currentPoint.dx + pathSegmentWidth, currentPoint.dy);
        final controlPoint2 =
            Offset(nextPoint.dx - pathSegmentWidth, nextPoint.dy);
        path.cubicTo(
          controlPoint1.dx,
          controlPoint1.dy,
          controlPoint2.dx,
          controlPoint2.dy,
          nextPoint.dx,
          nextPoint.dy,
        );
      }
      canvas.drawPath(path, pathPaint);
    }
  }

  @override
  bool shouldRepaint(covariant ChartPainter oldDelegate) {
    return oldDelegate.datas != datas;
  }
}
