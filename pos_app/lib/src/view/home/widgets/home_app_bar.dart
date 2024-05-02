import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/src/view/home/widgets/alert_dot.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                style: TextStyle(
                  color: Color(0xff222831),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'kasir Toko A',
                style: TextStyle(
                  color: Color(0xff7c7c7c),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Stack(children: [
            SvgPicture.asset(
              'assets/icons/alert.svg',
              colorFilter: const ColorFilter.mode(
                Palette.text,
                BlendMode.srcIn,
              ),
            ),
            const Positioned(
              top: 3,
              right: 4,
              child: AlertDot(),
            )
          ]),
        ],
      ),
    );
  }
}
