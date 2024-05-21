import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/tab_item.dart';

class TabItemView extends StatelessWidget {
  const TabItemView({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onPressed,
  });

  final TabItem item;
  final bool isSelected;
  final void Function(TabItem item) onPressed;

  FontWeight get fontWeight => isSelected ? FontWeight.w500 : FontWeight.w400;
  Color get fontColor => isSelected ? Colors.white : Palette.text;
  Color get backgroundColor => isSelected ? Palette.primary : Colors.white;
  Border? get border => isSelected ? null : Border.all(color: Palette.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(item),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          border: border,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            item.title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: fontWeight,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
