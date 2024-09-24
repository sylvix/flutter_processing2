part of '../_core.dart';

const CORNER = 'CORNER';
const CORNERS = 'CORNERS';
const CENTER = 'CENTER';
const RADIUS = 'RADIUS';

mixin SketchShapeTwoDPrimitives on BaseSketch {
  var _rectMode = CORNER;

  void point(num x, num y) {
    _paintingContext.strokePaint.style = PaintingStyle.fill;
    _paintingContext.canvas.drawRect(
      Rect.fromLTWH(x.toDouble(), y.toDouble(), 1, 1),
      _paintingContext.strokePaint,
    );
    _paintingContext.strokePaint.style = PaintingStyle.stroke;

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  /// Рисует линию (прямой путь между двумя точками) на экране.
  /// Версия функции [line] с четырьмя параметрами рисует линию в 2D.
  /// Чтобы закрасить линию, используйте функцию [stroke].
  /// Линия не может быть заполнена, поэтому функция [fill] не влияет на цвет линии.
  /// 2D линии по умолчанию рисуются с шириной в один пиксель, но это можно изменить с помощью функции [strokeWeight].
  void line(
    num x1,
    num y1,
    num x2,
    num y2, [
    num? x3,
    num? y3,
  ]) {
    if (x3 != null || y3 != null) {
      throw UnimplementedError('3D line drawing is not yet supported.');
    }
    final p1 = Offset(x1.toDouble(), y1.toDouble());
    final p2 = Offset(x2.toDouble(), y2.toDouble());

    _paintingContext.canvas.drawLine(p1, p2, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void circle(
    num x,
    num y,
    num extent,
  ) {
    final center = Offset(x.toDouble(), y.toDouble());
    if (_paintingContext.strokePaint.color.alpha > 0) {
      _paintingContext.canvas
          .drawCircle(center, extent / 2, _paintingContext.strokePaint);
    }
    _paintingContext.canvas
        .drawCircle(center, extent / 2, _paintingContext.fillPaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void ellipse(Ellipse ellipse) {
    _paintingContext.canvas //
      ..drawOval(ellipse.rect, _paintingContext.fillPaint) //
      ..drawOval(ellipse.rect, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void arc({
    required Ellipse ellipse,
    required double startAngle,
    required double endAngle,
    ArcMode mode = ArcMode.openStrokePieFill,
  }) {
    switch (mode) {
      case ArcMode.openStrokePieFill:
        _paintingContext.canvas
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, true,
              _paintingContext.fillPaint)
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, false,
              _paintingContext.strokePaint);
        break;
      case ArcMode.open:
        _paintingContext.canvas
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, false,
              _paintingContext.fillPaint)
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, false,
              _paintingContext.strokePaint);
        break;
      case ArcMode.chord:
        final chordPath = Path()
          ..addArc(ellipse.rect, startAngle, endAngle - startAngle)
          ..close();

        _paintingContext.canvas
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, false,
              _paintingContext.fillPaint)
          ..drawPath(chordPath, _paintingContext.strokePaint);
        break;
      case ArcMode.pie:
        _paintingContext.canvas
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, true,
              _paintingContext.fillPaint)
          ..drawArc(ellipse.rect, startAngle, endAngle - startAngle, true,
              _paintingContext.strokePaint);
        break;
    }

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void rectMode(String mode) {
    if (![CORNER, CORNERS, CENTER, RADIUS].contains(mode)) {
      throw Exception('$mode is not a valid rectangle mode!');
    }

    _rectMode = mode;
  }

  void square(num x, num y, num extent) {
    Square square;
    final refPointOffset = Offset(x.toDouble(), y.toDouble());

    if (_rectMode == CENTER) {
      square = Square.fromCenter(refPointOffset, extent.toDouble());
    } else if (_rectMode == RADIUS) {
      square = Square.fromCenter(refPointOffset, extent / 2);
    } else {
      square = Square.fromLTE(refPointOffset, extent.toDouble());
    }

    _paintingContext.canvas //
      ..drawRect(square.rect, _paintingContext.fillPaint) //
      ..drawRect(square.rect, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void rect({
    required Rect rect,
    BorderRadius? borderRadius,
  }) {
    if (borderRadius == null) {
      _paintingContext.canvas //
        ..drawRect(rect, _paintingContext.fillPaint) //
        ..drawRect(rect, _paintingContext.strokePaint);
    } else {
      final rrect = RRect.fromRectAndCorners(
        rect,
        topLeft: borderRadius.topLeft,
        topRight: borderRadius.topRight,
        bottomLeft: borderRadius.bottomLeft,
        bottomRight: borderRadius.bottomRight,
      );
      _paintingContext.canvas //
        ..drawRRect(rrect, _paintingContext.fillPaint) //
        ..drawRRect(rrect, _paintingContext.strokePaint);
    }

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void triangle(Offset p1, Offset p2, Offset p3) {
    final path = Path()
      ..moveTo(p1.dx, p1.dy)
      ..lineTo(p2.dx, p2.dy)
      ..lineTo(p3.dx, p3.dy)
      ..close();

    _paintingContext.canvas //
      ..drawPath(path, _paintingContext.fillPaint) //
      ..drawPath(path, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }

  void quad(Offset p1, Offset p2, Offset p3, Offset p4) {
    final path = Path()
      ..moveTo(p1.dx, p1.dy)
      ..lineTo(p2.dx, p2.dy)
      ..lineTo(p3.dx, p3.dy)
      ..lineTo(p4.dx, p4.dy)
      ..close();

    _paintingContext.canvas //
      ..drawPath(path, _paintingContext.fillPaint) //
      ..drawPath(path, _paintingContext.strokePaint);

    _paintingContext.markHasUnappliedCanvasCommands();
  }
}
