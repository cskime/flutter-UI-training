import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/rekap_kas/widgets/chart/chart_view.dart';
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
                SizedBox(height: 20),
                ChartView(
                  datas: [
                    [100, 510, 790, 60, 730, 550, 720],
                    [800, 10, 500, 660, 850, 350, 880],
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    _ColoredContainer(
                      title: 'Uang Masuk',
                      color: Color(0xFF56E532),
                    ),
                    SizedBox(width: 15),
                    _ColoredContainer(
                      title: 'Uang Keluar',
                      color: Color(0xFFFF3838),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ColoredContainer extends StatelessWidget {
  const _ColoredContainer({
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
