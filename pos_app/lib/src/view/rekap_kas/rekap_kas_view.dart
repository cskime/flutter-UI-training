import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/rekap_kas/widgets/user_detail_button.dart';

class RekapKasView extends StatelessWidget {
  const RekapKasView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      child: Column(
        children: [
          BaseAppBar(title: 'Rekap Kas'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rabu, 11 Aug 2021 23:59',
                  style: TextStyle(
                    color: Palette.text,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 18),
                UserDetailButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
