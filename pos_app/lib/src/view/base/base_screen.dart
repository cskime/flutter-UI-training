import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({
    super.key,
    required this.child,
    this.safeAreaTop = true,
    this.safeAreaLeft = true,
    this.safeAreaRight = true,
    this.safeAreaBottom = true,
  });

  final Widget child;
  final bool safeAreaTop;
  final bool safeAreaLeft;
  final bool safeAreaRight;
  final bool safeAreaBottom;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: safeAreaTop,
      left: safeAreaLeft,
      right: safeAreaRight,
      bottom: safeAreaBottom,
      child: SingleChildScrollView(child: child),
    );
  }
}
