import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';

part 'pos_button_style.dart';

class POSButton extends StatefulWidget {
  const POSButton({
    super.key,
    required this.style,
    required this.title,
    required this.onPressed,
  });

  final POSButtonStyle style;
  final String title;
  final void Function() onPressed;

  @override
  State<POSButton> createState() => _POSButtonState();
}

class _POSButtonState extends State<POSButton> {
  bool _isSelected = false;

  void updateSelectedState() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => updateSelectedState(),
      onTapUp: (details) {
        updateSelectedState();
        widget.onPressed();
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: widget.style.backgroundColor(isSelected: _isSelected),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Palette.primary),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: widget.style.foregroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
