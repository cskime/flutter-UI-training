import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pos_app/design/palette.dart';

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [if (leading != null) leading!],
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Palette.text,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [if (trailing != null) trailing!],
            ),
          ),
        ],
      ),
    );
  }
}
