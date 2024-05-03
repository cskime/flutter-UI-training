import 'package:flutter/material.dart';
import 'package:pos_app/src/view/home/widgets/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = _pageController(context);
  }

  PageController _pageController(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const itemWidth = 311;
    const itemPadding = 8;
    return PageController(
      viewportFraction: (2 * itemPadding + itemWidth) / width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
            const SizedBox(height: 12),
            SizedBox(
              height: 150,
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Image.asset(
                  'assets/images/carousel-item.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
