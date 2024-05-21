import 'package:flutter/material.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/tab_item.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/tab_item_view.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  TabItem currentItem = TabItem.all;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Wrap(
        spacing: 8,
        children: TabItem.values
            .map(
              (item) => TabItemView(
                item: item,
                isSelected: item == currentItem,
                onPressed: (item) => setState(() {
                  currentItem = item;
                }),
              ),
            )
            .toList(),
      ),
    );
  }
}
