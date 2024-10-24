part of '../_core.dart';

mixin SketchShapeAttributes on BaseSketch {
  var _rectMode = CORNER;
  var _ellipseMode = CENTER;

  /// Sets the width of the stroke used for lines, points, and the border around shapes.
  /// All widths are set in units of pixels.
  void strokeWeight(num newWeight) {
    if (newWeight < 0) {
      throw Exception('Stroke weight must be >= 0');
    }

    _paintingContext.strokePaint.strokeWidth = newWeight.toDouble();
  }

  /// Modifies the location from which ellipses are drawn by changing the way in which parameters given to [ellipse()] are interpreted.
  ///
  /// The default mode is `ellipseMode(CENTER)`, which interprets the first two parameters of [ellipse()] as the shape's center point, while the third and fourth parameters are its width and height.
  ///
  /// `ellipseMode(RADIUS)` also uses the first two parameters of [ellipse()] as the shape's center point, but uses the third and fourth parameters to specify half of the shape's width and height.
  ///
  /// `ellipseMode(CORNER)` interprets the first two parameters of [ellipse()] as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
  ///
  /// `ellipseMode(CORNERS)` interprets the first two parameters of [ellipse()] as the location of one corner of the ellipse's bounding box, and the third and fourth parameters as the location of the opposite corner.
  void ellipseMode(String mode) {
    if (![CORNER, CORNERS, CENTER, RADIUS].contains(mode)) {
      throw Exception('$mode is not a valid ellipse mode!');
    }

    _ellipseMode = mode;
  }

  /// Modifies the location from which rectangles are drawn by changing the way in which parameters given to [rect()] are interpreted.
  ///
  /// The default mode is `rectMode(CORNER)`, which interprets the first two parameters of [rect()] as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
  ///
  /// `rectMode(CORNERS)` interprets the first two parameters of [rect()] as the location of one corner, and the third and fourth parameters as the location of the opposite corner.
  ///
  /// `rectMode(CENTER)` interprets the first two parameters of [rect()] as the shape's center point, while the third and fourth parameters are its width and height.
  ///
  /// `rectMode(RADIUS)` also uses the first two parameters of [rect()] as the shape's center point, but uses the third and fourth parameters to specify half of the shape's width and height.
  void rectMode(String mode) {
    if (![CORNER, CORNERS, CENTER, RADIUS].contains(mode)) {
      throw Exception('$mode is not a valid rectangle mode!');
    }

    _rectMode = mode;
  }
}
