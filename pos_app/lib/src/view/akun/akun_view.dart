import 'package:flutter/material.dart';
import 'package:pos_app/design/components/alert_button/alert_button.dart';
import 'package:pos_app/src/view/akun/widgets/profile_card.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';

class AkunView extends StatelessWidget {
  const AkunView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      child: Column(
        children: [
          BaseAppBar(
            title: 'Akun Saya',
            trailing: AlertButton(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ProfileCard(),
          ),
        ],
      ),
    );
  }
}
