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
    if (children.isEmpty) {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: children,
      );
    }

    final spacers = List.generate(
      children.length - 1,
      (index) => SizedBox(height: spacing),
    );
    var separatedChildren = <Widget>[children.first];

    for (int index = 0; index < children.length - 1; index++) {
      separatedChildren.addAll([spacers[index], children[index + 1]]);
    }

    return Column(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: separatedChildren,
    );
  }
}
