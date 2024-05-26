import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgIconProvider.icon(
        'icon_keranjang_add',
      ),
    );
  }
}
