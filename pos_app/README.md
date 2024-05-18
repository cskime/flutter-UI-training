# POS App

- Designed by [Fery Pratama](https://www.figma.com/@ferrtama) on [Figma](https://www.figma.com/community/file/1365326155647727549)

## Result

![result](#)

## What I Learned

### PageView

- I used the `PageView` widget to implement a image carousel UI.
- To adjust a spacing dynamically between images, the `viewportFraction` property of `PageController` is calculated depending on the image width.
- The fomula of `viewportFraction` is:
  ```
  viewportFraction = (horizontalPadding * 2 + itemWidth) / pageViewWidth
  ```

### `viewInset` vs `padding` vs `viewPadding`

- These are a property of `MediaQueryData` which represent a inset of a screen.
- To get a static screen inset, I use the `viewPadding`.
- The difference between these properties:
  - `viewInset` : The parts of the display that are **completely obscured** by system UI, typically by the device's keyboard.
  - `viewPadding` : The parts of the display that are **partially obscured** by system UI, typically by the hardware display nothces or the system status bar.
  - `padding` : calculated results from `max(0.0, viewPadding - viewInset)`

### Drawing chart using `CustomPaint` and `CustomPainter`

| ([Source code](./lib/src/view/rekap_kas/widgets/chart/chart_painter.dart))

- I used the `CustomPaint` widget and `CustomPainter` subclass to draw chart with curved line graph.
- `CustomPaint` widget
  - Rendering order : `painter` -> `child` -> `foregroundPainter`
    - `painter`, `foregroundPainter` : A subclass of `CustomPainter` which defines how to paint on the `Canvas`
    - `child` : A child widget which is rendered between `painter` and `foregroundPainter`.
  - Sizing order : parent -> child -> own
    - If the parent widget specifies a size, `CustomPaint` follows the parent's size.
    - If the child widget has own size, `CustomPaint` follows the child's size.
    - Otherwise, `CustomPaint` uses the own size. (`size` property)
    - `CustomPaint` widget must have a size.
- `CustomPainter`
  - It's required to implement `paint` and `shouldRepaint` method.
  - In `paint` method, it draws graphics using `Canvas`.
    - The `Canvas` has drawing methods: `drawLine`, `drawCircle`, ...
    - To use this methods, it needs a `Paint` object which defines styles like `strokeWidth`, `color`, `strokeCap`, etc.
    - To draw text, the `TextPainter` is more useful rather than `drawParagraph` method in `Canvas`.
      - When I used the `drawParagraph`, I can't control a exact location of text. It was a bit tricky.
      - But, when I used the `TextPainter`, I can draw texts exactly where I want to. It was much easier and there was no bugs what I didn't expect.
  - In `shouldRepaint` method, it returns `true` if it needs to repaint using `oldDelegate`.
    - This method's parameter is `covarient` which means that the type of parameter can be replaced by a subclass of `CustomPaint`.
- To draw chart, I used these APIs
  - `Canvas.drawLine` to draw grid lines
  - `TextPainter.paint` to draw texts
  - `Canvas.drawCircle` to draw dots
  - `Canvas.drawPath` to draw cubic bezier path

## [Packages](./pubspec.yaml)

- [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash) package for splash screen.
- [`flutter_svg`](https://pub.dev/packages/flutter_svg) package for using a SVG icon.
- [`flutter_staggered_grid_view`](https://pub.dev/packages/flutter_staggered_grid_view) package for a grid view to layout an item with content sized height.
