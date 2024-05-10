import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/main/widgets/bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:pos_app/src/view/main/widgets/bottom_navigation_bar/custom_navigation_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.onPressed,
  });

  final void Function(CustomNavigationItem item) onPressed;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  List<Widget> get items {
    var items = CustomNavigationItem.values.indexed.map<Widget>((value) {
      final itemIndex = value.$1;
      final item = value.$2;
      final isSelected = itemIndex == currentIndex;
      return CustomBottomNavigationBarItem(
        iconName: item.iconName(isSelected: isSelected),
        title: item.title,
        color: isSelected ? Palette.primary : Palette.grey,
        onPressed: () => setState(() {
          currentIndex = itemIndex;
          widget.onPressed(item);
        }),
      );
    }).toList();
    items.insert(CustomNavigationItem.values.length ~/ 2, const Spacer());
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final itemWidth = mediaQuery.size.width / 5;
    final bottomPadding = mediaQuery.viewPadding.bottom;
    return Column(
      mainAxisSize: MainAxisSize.min, // Scaffold에 넣을 때 화면에 꽉 차게 나오는 현상 방지
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(children: items),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.circular(100),
                ),
                width: itemWidth,
                height: itemWidth,
                clipBehavior: Clip.hardEdge,
                child: Center(
                  child: SvgIconProvider.icon(
                    'icon-scan',
                    width: itemWidth * 0.3,
                    height: itemWidth * 0.3,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: bottomPadding,
          child: const ColoredBox(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
