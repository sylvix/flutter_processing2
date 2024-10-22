part of '../_core.dart';

mixin SketchShapeTwoDPrimitives on BaseSketch, SketchShapeAttributes {
  /// Draws a point, a coordinate in space at the dimension of one pixel.
  /// The first parameter is the horizontal value for the point, and the the second value is the vertical value for the point.
  /// Use [stroke()] to set the color of a [point()].
  void point(num x, num y) {
    _paintingContext.strokePaint.style = PaintingStyle.fill;
    _paintingContext.canvas.drawRect(
      Rect.fromLTWH(x.toDouble(), y.toDouble(), 1, 1),
      _paintingContext.strokePaint,
    );
    _paintingContext.strokePaint.style = PaintingStyle.stroke;

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// Draws a line (a direct path between two points) to the screen.
  /// To color a line, use the [stroke()] function. A line cannot be filled, therefore the [fill()] function will not affect the color of a line.
  /// Lines are drawn with a width of one pixel by default, but this can be changed with the [strokeWeight()] function.
  void line(num x1, num y1, num x2, num y2) {
    final p1 = Offset(x1.toDouble(), y1.toDouble());
    final p2 = Offset(x2.toDouble(), y2.toDouble());

    _paintingContext.canvas.drawLine(p1, p2, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// Draws a circle to the screen.
  /// By default, the first two parameters set the location of the center, and the third sets the shape's width and height.
  /// The origin may be changed with the [ellipseMode()] function.
  ///
  /// [CORNERS] ellipse mode is ignored for [circle()].
  void circle(
    num x,
    num y,
    num extent,
  ) {
    double radius = extent / 2;

    if (_ellipseMode == RADIUS) {
      radius = extent.toDouble();
    }

    if (_ellipseMode == CORNER) {
      x = x - extent;
      y - y - extent;
    }

    Offset center = Offset(x.toDouble(), y.toDouble());

    if (_paintingContext.strokePaint.color.alpha > 0) {
      _paintingContext.canvas
          .drawCircle(center, radius, _paintingContext.strokePaint);
    }

    _paintingContext.canvas
        .drawCircle(center, radius, _paintingContext.fillPaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  Rect _createEllipseRect(num a, num b, num c, num d) {
    if (_ellipseMode == CENTER) {
      return Rect.fromCenter(
        center: Offset(a.toDouble(), b.toDouble()),
        width: c.toDouble(),
        height: d.toDouble(),
      );
    } else if (_ellipseMode == RADIUS) {
      return Rect.fromCenter(
        center: Offset(a.toDouble(), b.toDouble()),
        width: c * 2,
        height: d * 2,
      );
    } else if (_ellipseMode == CORNER) {
      return Rect.fromLTWH(
        a.toDouble(),
        b.toDouble(),
        c.toDouble(),
        d.toDouble(),
      );
    }
    return Rect.fromLTRB(
      a.toDouble(),
      b.toDouble(),
      c.toDouble(),
      d.toDouble(),
    );
  }

  void ellipse(num a, num b, num c, num d) {
    final rect = _createEllipseRect(a, b, c, d);
    _paintingContext.canvas //
      ..drawOval(rect, _paintingContext.fillPaint) //
      ..drawOval(rect, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// Draws an arc to the screen.
  /// Arcs are drawn along the outer edge of an ellipse defined by the [a], [b], [c], and [d] parameters.
  /// The origin of the arc's ellipse may be changed with the [ellipseMode()] function.
  /// Use the [start] and [stop] parameters to specify the angles (in radians) at which to draw the arc.
  /// The [start]/[stop] values must be in clockwise order.
  ///
  /// There are three ways to draw an arc; the rendering technique used is defined by the optional seventh parameter.
  /// The three options are [PIE], [OPEN], and [CHORD]. The default mode is the OPEN stroke with a PIE fill.
  void arc(
    num a,
    num b,
    num c,
    num d,
    num start,
    num stop, [
    String mode = OPEN_STROKE_PIE_FILL,
  ]) {
    final rect = _createEllipseRect(a, b, c, d);

    switch (mode) {
      case OPEN_STROKE_PIE_FILL:
        _paintingContext.canvas
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), true,
              _paintingContext.fillPaint)
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), false,
              _paintingContext.strokePaint);
        break;
      case OPEN:
        _paintingContext.canvas
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), false,
              _paintingContext.fillPaint)
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), false,
              _paintingContext.strokePaint);
        break;
      case CHORD:
        final chordPath = Path()
          ..addArc(rect, start.toDouble(), (stop - start).toDouble())
          ..close();

        _paintingContext.canvas
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), false,
              _paintingContext.fillPaint)
          ..drawPath(chordPath, _paintingContext.strokePaint);
        break;
      case PIE:
        _paintingContext.canvas
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), true,
              _paintingContext.fillPaint)
          ..drawArc(rect, start.toDouble(), (stop - start).toDouble(), true,
              _paintingContext.strokePaint);
        break;
    }

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// Draws a square to the screen.
  /// A square is a four-sided shape with every angle at ninety degrees and each side is the same length.
  /// By default, the first two parameters set the location of the upper-left corner, the third sets the width and height.
  /// The way these parameters are interpreted, however, may be changed with the [rectMode()] function.
  /// `rectMode(CORNERS)` is ignored for [square()]
  void square(num x, num y, num extent) {
    Square square;
    final refPointOffset = Offset(x.toDouble(), y.toDouble());

    if (_rectMode == CENTER) {
      square = Square.fromCenter(refPointOffset, extent.toDouble());
    } else if (_rectMode == RADIUS) {
      square = Square.fromCenter(refPointOffset, extent * 2);
    } else {
      square = Square.fromLTE(refPointOffset, extent.toDouble());
    }

    _paintingContext.canvas //
      ..drawRect(square.rect, _paintingContext.fillPaint) //
      ..drawRect(square.rect, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// Draws a rectangle to the screen.
  /// A rectangle is a four-sided shape with every angle at ninety degrees.
  /// By default, the first two parameters set the location of the upper-left corner,
  /// the third sets the width, and the fourth sets the height.
  /// The way these parameters are interpreted, however, may be changed with the [rectMode()] function.
  ///
  /// To draw a rounded rectangle, add a fifth parameter,
  /// which is used as the radius value for all four corners.
  ///
  /// To use a different radius value for each corner, include eight parameters.
  /// When using eight parameters, the latter four set the radius of the arc at each corner separately,
  /// starting with the top-left corner and moving clockwise around the rectangle.
  void rect(num a, num b, num c, num d, [num? tl, num? tr, num? br, num? bl]) {
    final radiusPresent = tl != null;
    final countOfOtherRadii =
        [tr, br, bl].where((e) => e != null).toList().length;
    final allOtherRadiiPresent = countOfOtherRadii == 3;
    final someOtherRadiiPresent =
        countOfOtherRadii == 1 || countOfOtherRadii == 2;

    if ((!radiusPresent && allOtherRadiiPresent) ||
        (radiusPresent && someOtherRadiiPresent)) {
      throw Exception(
        'Incorrect arguments for rect(), please consult the docs',
      );
    }

    Rect rect;
    if (_rectMode == CENTER) {
      rect = Rect.fromCenter(
        center: Offset(a.toDouble(), b.toDouble()),
        width: c.toDouble(),
        height: d.toDouble(),
      );
    } else if (_rectMode == RADIUS) {
      rect = Rect.fromCenter(
        center: Offset(a.toDouble(), b.toDouble()),
        width: c * 2,
        height: d * 2,
      );
    } else if (_rectMode == CORNERS) {
      rect =
          Rect.fromLTRB(a.toDouble(), b.toDouble(), c.toDouble(), d.toDouble());
    } else {
      rect =
          Rect.fromLTWH(a.toDouble(), b.toDouble(), c.toDouble(), d.toDouble());
    }

    if (!radiusPresent) {
      _paintingContext.canvas //
        ..drawRect(rect, _paintingContext.fillPaint) //
        ..drawRect(rect, _paintingContext.strokePaint);
    } else {
      Radius radiusTopLeft, radiusTopRight, radiusBottomLeft, radiusBottomRight;
      if (allOtherRadiiPresent) {
        radiusTopLeft = Radius.circular(tl!.toDouble());
        radiusTopRight = Radius.circular(tr!.toDouble());
        radiusBottomLeft = Radius.circular(bl!.toDouble());
        radiusBottomRight = Radius.circular(br!.toDouble());
      } else {
        radiusTopLeft = radiusTopRight = radiusBottomLeft =
            radiusBottomRight = Radius.circular(tl!.toDouble());
      }

      final rrect = RRect.fromRectAndCorners(
        rect,
        topLeft: radiusTopLeft,
        topRight: radiusTopRight,
        bottomLeft: radiusBottomLeft,
        bottomRight: radiusBottomRight,
      );
      _paintingContext.canvas //
        ..drawRRect(rrect, _paintingContext.fillPaint) //
        ..drawRRect(rrect, _paintingContext.strokePaint);
    }

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// A triangle is a plane created by connecting three points.
  /// The first two arguments specify the first point, the middle two arguments specify the second point,
  /// and the last two arguments specify the third point.
  void triangle(num x1, num y1, num x2, num y2, num x3, num y3) {
    final path = Path()
      ..moveTo(x1.toDouble(), y1.toDouble())
      ..lineTo(x2.toDouble(), y2.toDouble())
      ..lineTo(x3.toDouble(), y3.toDouble())
      ..close();

    _paintingContext.canvas //
      ..drawPath(path, _paintingContext.fillPaint) //
      ..drawPath(path, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// A quad is a quadrilateral, a four sided polygon.
  /// It is similar to a rectangle, but the angles between its edges are not constrained to ninety degrees.
  /// The first pair of parameters ([x1],[y1]) sets the first vertex and the subsequent pairs
  /// should proceed clockwise or counter-clockwise around the defined shape.
  void quad(num x1, num y1, num x2, num y2, num x3, num y3, num x4, num y4) {
    final path = Path()
      ..moveTo(x1.toDouble(), y1.toDouble())
      ..lineTo(x2.toDouble(), y2.toDouble())
      ..lineTo(x3.toDouble(), y3.toDouble())
      ..lineTo(x4.toDouble(), y4.toDouble())
      ..close();

    _paintingContext.canvas //
      ..drawPath(path, _paintingContext.fillPaint) //
      ..drawPath(path, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }
}
