import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';
import 'package:pos_app/src/view/common/widgets/back_button.dart';
import 'package:pos_app/src/view/keranjang/widgets/list/keranjang_list_view.dart';

class KeranjangView extends StatelessWidget {
  const KeranjangView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BaseScreen(
        header: BaseAppBar(
          title: 'Penjualan',
          leading: context.canPop ? const POSBackButton() : null,
          trailing: SvgIconProvider.icon('icon-note'),
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: PenjualanSearchBar(),
            ),
            SizedBox(height: 4),
            KeranjangListView(),
          ],
        ),
      ),
    );
  }
}
