# POS App

- Designed by [Fery Pratama](https://www.figma.com/@ferrtama) on [Figma](https://www.figma.com/community/file/1365326155647727549)

## Result

![result](#)

## What I Learned

### PageView

- `PageView` widget for a carousel images using a calculated `viewportFraction` of `PageController` to calculate spacing that depends on the image width.
- For an each image, `viewportFraction = (horizontalPadding * 2 + itemWidth) / pageViewWidth`

### `viewInset` vs `padding` vs `viewPadding` in `MediaQueryData`

- `viewInset` : The parts of the display that are completely obscured by system UI, typically by the device's keyboard.
- `viewPadding` : The parts of the display that are partially obscured by system UI, typically by the hardware display nothces or the system status bar.
- `padding` : calculated results from `max(0.0, viewPadding - viewInset)`
- Use `viewPadding` to get a static screen inset.

### Drawing chart using `CustomPaint` and `CustomPainter`

- Drawing grid
- Drawing text
- Drawing graph

## [Packages](./pubspec.yaml)

- [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash) package for splash screen.
- [`flutter_svg`](https://pub.dev/packages/flutter_svg) package for using a SVG icon.
- [`flutter_staggered_grid_view`](https://pub.dev/packages/flutter_staggered_grid_view) package for a grid view to layout an item with content sized height.
