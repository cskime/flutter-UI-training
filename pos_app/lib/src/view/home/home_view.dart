import 'package:flutter/material.dart';
import 'package:pos_app/src/view/home/widgets/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeAppBar(),
          ],
        ),
      ),
    );
  }
}
