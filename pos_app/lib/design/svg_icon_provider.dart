import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

abstract final class SvgIconProvider {
  static Widget icon(String name,
      {Color? color, double? width, double? height}) {
    ColorFilter? colorFilter;
    if (color != null) {
      colorFilter = ColorFilter.mode(color, BlendMode.srcIn);
    }

    return SvgPicture.asset(
      'assets/icons/$name.svg',
      colorFilter: colorFilter,
      width: width,
      height: height,
    );
  }
}
