import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  late PageController pageController;

  PageController _pageController(BuildContext context) {
    final pageViewWidth = MediaQuery.of(context).size.width;
    const itemWidth = 311;
    const itemPadding = 8;
    return PageController(
      viewportFraction: (2 * itemPadding + itemWidth) / pageViewWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    pageController = _pageController(context);
    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Image.asset(
        'assets/images/carousel-item.png',
      ),
    );
  }
}
