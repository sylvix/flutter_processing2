part of '../_core.dart';

mixin SketchColorSetting on BaseSketch {
  Color _backgroundColor = const Color(0xFFC5C5C5);

  void _setBackgroundColor(Color color) {
    _backgroundColor = color;

    final paint = Paint()..color = color;
    final rect = Offset.zero &
        Size(
          _paintingContext.width.toDouble(),
          _paintingContext.height.toDouble(),
        );

    _paintingContext.canvas.drawRect(rect, paint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  Color _getColorFromRGBA(int color1, [int? color2, int? color3, int? color4]) {
    if (color2 == null && (color3 != null || color4 != null)) {
      throw Exception(
        'Wrong color parameters. Second parameter cannot be null if third or fourth are present',
      );
    }
    if (color3 == null && color4 != null) {
      throw Exception(
        'Wrong color parameters. Third parameter cannot be null if fourth is present',
      );
    }

    Color color;

    if (color2 == null) {
      color = Color.fromARGB(255, color1, color1, color1);
    } else if (color3 == null) {
      color = Color.fromARGB(color2, color1, color1, color1);
    } else {
      var alpha = 255;

      if (color4 != null) {
        alpha = color4;
      }

      color = Color.fromARGB(alpha, color1, color2, color3);
    }
    return color;
  }

  /// The `background()` function sets the color used for the background of the sketch.
  /// The default background is light gray.
  /// This function is typically used within [draw()] to clear the display window at the beginning of each frame,
  /// but it can be used inside [setup()] to set the background on the first frame of animation
  /// or if the background need only be set once.
  ///
  /// It is not possible to use the transparency alpha parameter with background colors
  /// on the main drawing surface.
  void background(num color1, [num? color2, num? color3]) {
    final isGrayscale = color2 == null && color3 == null;

    if (!isGrayscale && (color2 == null || color3 == null)) {
      throw Exception('Background can take either one or three parameters');
    }

    Color color;
    final grayscale = color1.toInt();

    if (isGrayscale) {
      color = Color.fromARGB(255, grayscale, grayscale, grayscale);
    } else {
      color =
          Color.fromARGB(255, color1.toInt(), color2!.toInt(), color3!.toInt());
    }

    _setBackgroundColor(color);
  }

  /// Sets the color used to fill shapes.
  /// For example, if you run `fill(204, 102, 0)`, all subsequent shapes will be filled with orange.
  /// The default color space is RGB, with each value in the range from 0 to 255.
  void fill(int color1, [int? color2, int? color3, int? color4]) {
    final color = _getColorFromRGBA(color1, color2, color3, color4);
    _paintingContext.fillPaint.color = color;
  }

  /// Disables filling geometry.
  /// If both [noStroke()] and [noFill()] are called, nothing will be drawn to the screen.
  void noFill() {
    _paintingContext.fillPaint.color = const Color(0x00000000);
  }

  /// Sets the color used to draw lines and borders around shapes.
  /// The default color space is RGB, with each value in the range from 0 to 255.
  void stroke(int color1, [int? color2, int? color3, int? color4]) {
    final color = _getColorFromRGBA(color1, color2, color3, color4);
    _paintingContext.strokePaint.color = color;
  }

  /// Disables drawing the stroke (outline).
  /// If both [noStroke()] and [noFill()] are called, nothing will be drawn to the screen.
  void noStroke() {
    _paintingContext.strokePaint.color = const Color(0x00000000);
  }

  /// Clears all the pixels within a buffer.
  void clear() {
    _backgroundColor = const Color(0x00000000);

    _paintingContext.canvas.drawColor(const Color(0x00000000), BlendMode.clear);

    _paintingContext.markHasUnappliedCanvasCommands();
  }
}
