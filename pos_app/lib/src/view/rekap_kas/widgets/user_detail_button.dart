import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';

class UserDetailButton extends StatelessWidget {
  const UserDetailButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;
  final TextStyle textStyle = const TextStyle(
    color: Palette.text,
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffe5e5e5),
          borderRadius: BorderRadius.circular(4),
        ),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              SvgIconProvider.icon('icon-employe'),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Alex Parkinson',
                      style: textStyle.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Kasir',
                      style: textStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              SvgIconProvider.icon('icon-chevron-right'),
            ],
          ),
        ),
      ),
    );
  }
}
