import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({
    super.key,
    this.header,
    required this.body,
    this.footer,
    this.safeAreaTop = true,
    this.safeAreaLeft = true,
    this.safeAreaRight = true,
    this.safeAreaBottom = true,
  });

  final Widget? header;
  final Widget body;
  final Widget? footer;
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
      child: Column(
        children: [
          if (header != null) header!,
          Expanded(child: SingleChildScrollView(child: body)),
          if (footer != null) footer!,
        ],
      ),
    );
  }
}
