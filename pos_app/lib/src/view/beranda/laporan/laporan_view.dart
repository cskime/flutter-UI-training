import 'package:flutter/material.dart';
import 'package:pos_app/design/components/back_button.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/laporan/widgets/laporan_item.dart';
import 'package:pos_app/src/view/beranda/laporan/widgets/laporan_item_view.dart';

class LaporanView extends StatelessWidget {
  const LaporanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        header: BaseAppBar(
          title: 'Kategori',
          leading: const POSBackButton(),
          trailing: SvgIconProvider.icon('icon-setting'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 16),
            Column(
              children: LaporanItem.values
                  .map((item) => LaporanItemView(item: item))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
