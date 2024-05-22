import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';

class POSBackButton extends StatelessWidget {
  const POSBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: SvgIconProvider.icon('icon-arrow-back'),
    );
  }
}
