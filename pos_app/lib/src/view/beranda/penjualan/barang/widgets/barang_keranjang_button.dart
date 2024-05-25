import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';

class BarangKeranjangButton extends StatefulWidget {
  const BarangKeranjangButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  State<BarangKeranjangButton> createState() => _BarangKeranjangButtonState();
}

class _BarangKeranjangButtonState extends State<BarangKeranjangButton> {
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
          color: _isSelected ? const Color(0xFF3436B1) : Palette.primary,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Center(
          child: Text(
            'Masuk Keranjang',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
