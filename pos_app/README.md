# POS App

- Designed by [Fery Pratama](https://www.figma.com/@ferrtama) on [Figma](https://www.figma.com/community/file/1365326155647727549)

## Result

![result](#)

## Skills

### Packages

- [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash) package for splash screen.
- [`flutter_svg`](https://pub.dev/packages/flutter_svg) package for using a SVG icon.
- [`flutter_staggered_grid_view`](https://pub.dev/packages/flutter_staggered_grid_view) package for a grid view to layout an item with content sized height.

### Widgets

- `PageView` widget for a carousel images using a calculated `viewportFraction` of `PageController` to calculate spacing that depends on the image width.
  - For an each image, `viewportFraction = (horizontalPadding * 2 + itemWidth) / pageViewWidth`
