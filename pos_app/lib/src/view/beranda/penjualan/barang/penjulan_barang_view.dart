import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';

class PenjulanBarangView extends StatelessWidget {
  const PenjulanBarangView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BaseScreen(
        child: Column(
          children: [
            BaseAppBar(
              title: 'Penjualan',
              leading: const BackButton(),
              trailing: SvgIconProvider.icon('icon-filter'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: PenjualanSearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}
