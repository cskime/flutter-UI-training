import 'package:flutter/material.dart';

class SeparatedColumn extends StatelessWidget {
  const SeparatedColumn({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    required this.children,
    required this.spacing,
  });

  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final spacers = List.generate(
      children.length - 1,
      (index) => SizedBox(height: spacing),
    );
    var separatedChildren = <Widget>[];

    for (int index = 0; index < children.length - 1; index++) {
      separatedChildren.addAll([children[index + 1], spacers[index]]);
    }

    return Column(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: separatedChildren,
    );
  }
}
