import 'package:flutter/material.dart';
import 'package:pos_app/design/components/alert_button/alert_button.dart';
import 'package:pos_app/src/view/akun/models/setting_item.dart';
import 'package:pos_app/src/view/akun/widgets/profile_card.dart';
import 'package:pos_app/src/view/akun/widgets/setting_item_view.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';

class AkunView extends StatelessWidget {
  const AkunView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Column(
        children: [
          const BaseAppBar(
            title: 'Akun Saya',
            trailing: AlertButton(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ProfileCard(),
          ),
          const SizedBox(height: 16),
          Column(
            children: SettingItem.values
                .map(
                  (item) => SettingItemView(
                    item: item,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
