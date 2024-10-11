part of '../_core.dart';

mixin SketchTypography on BaseSketch {
  String? _fontName;
  double _fontSize = 24;
  double? _textLeading;
  String _textAlignHorizontal = LEFT;
  String _textAlignVertical = TOP;

  TextAlign _toFlutterAlign(String alignment) {
    switch (alignment) {
      case LEFT:
        return TextAlign.left;
      case CENTER:
        return TextAlign.center;
      case RIGHT:
        return TextAlign.right;
      default:
        throw Exception('$alignment is not supported!');
    }
  }

  /// Sets the current font that will be drawn with the [text()] function.
  /// Use the standard Flutter configuration in `pubspec.yaml` file to add new fonts.
  ///
  /// The font set through [textFont()] will be used in all subsequent calls to the [text()] function.
  /// If no size parameter is specified, the font size defaults to `24`.
  void textFont(String fontName) {
    _fontName = fontName;
  }

  /// Draws text to the screen.
  /// Displays the information specified in the first parameter on the screen in the position specified by the additional parameters.
  /// A default font will be used unless a font is set with the [textFont()] function
  /// and a default size will be used unless a font is set with [textSize()].
  /// Change the color of the text with the [fill()] function.
  /// The text displays in relation to the [textAlign()] function,
  /// which gives the option to draw to the left, right, and center of the coordinates.
  void text(String text, num x, num y) {
    final paragraphBuilder = ParagraphBuilder(ParagraphStyle(
      fontFamily: _fontName,
      fontSize: _fontSize,
      textAlign: _toFlutterAlign(_textAlignHorizontal),
    ))
      ..pushStyle(TextStyle(
        color: _paintingContext.fillPaint.color,
        height: _textLeading != null ? _textLeading! / _fontSize : null,
      ))
      ..addText(text);
    final paragraph = paragraphBuilder.build()
      ..layout(
        ParagraphConstraints(width: double.infinity),
      );

    late double textX;
    late double textY;
    switch (_textAlignHorizontal) {
      case LEFT:
        textX = x.toDouble();
        break;
      case CENTER:
        textX = x - (paragraph.maxIntrinsicWidth / 2);
        break;
      case RIGHT:
        textX = x - paragraph.maxIntrinsicWidth;
        break;
    }

    switch (_textAlignVertical) {
      case TOP:
        // We adjust the top alignment to deal with leading. Flutter applies extra
        // leading to the first line of text, but Processing wants the top of the
        // first line to sit exactly on the given `y` value. We do our best to
        // correct for that, here.
        final firstCharacterHeight =
            paragraph.getBoxesForRange(0, 1).first.toRect().height;
        final leadingAdjustment =
            _textLeading != null ? (_textLeading! - firstCharacterHeight) : 0;

        textY = (y - leadingAdjustment).toDouble();
        break;
      case CENTER:
        textY = y - (paragraph.height / 2);
        break;
      case BASELINE:
        textY = y - paragraph.alphabeticBaseline;
        break;
      case BOTTOM:
        textY = y - paragraph.height;
        break;
    }

    _paintingContext.canvas.drawParagraph(paragraph, Offset(textX, textY));
  }

  /// Sets the current alignment for drawing text.
  /// The parameters [LEFT], [CENTER], and [RIGHT] set the display characteristics of the letters in relation
  /// to the values for the x and y parameters of the [text()] function.
  ///
  /// An optional second parameter can be used to vertically align the text.
  /// [BASELINE] is the default, and the vertical alignment will be reset to [BASELINE] if the second parameter is not used.
  /// The [TOP] and [CENTER] parameters are straightforward. The [BOTTOM] parameter offsets the line based on the current [textDescent()].
  /// For multiple lines, the final line will be aligned to the bottom, with the previous lines appearing above it.
  ///
  /// The vertical alignment is based on the value of [textAscent()], which many fonts do not specify correctly.
  /// It may be necessary to use a hack and offset by a few pixels by hand so that the offset looks correct.
  /// To do this as less of a hack, use some percentage of [textAscent()] or [textDescent()] so that the hack works even if you change the size of the font.
  void textAlign(String horizontalAlignment, [String? verticalAlignment]) {
    if (![LEFT, CENTER, RIGHT].contains(horizontalAlignment)) {
      throw Exception(
          '$horizontalAlignment is not a valid horizontal text alignment! Only LEFT, CENTER and RIGHT are supported!');
    }
    if (verticalAlignment != null &&
        ![TOP, BOTTOM, CENTER, BASELINE].contains(verticalAlignment)) {
      throw Exception(
          '$verticalAlignment is not a valid vertical text alignment! Only TOP, BOTTOM, CENTER and BASELINE are supported!');
    }
    _textAlignHorizontal = horizontalAlignment;
    _textAlignVertical = verticalAlignment ?? BASELINE;
  }

  /// Sets the spacing between lines of text in units of pixels.
  /// This setting will be used in all subsequent calls to the [text()] function.
  /// Note, however, that the leading is reset by [textSize()].
  /// For example, if the leading is set to `20` with `textLeading(20)`,
  /// then if `textSize(48)` is run at a later point, the leading will be reset to the default for the text size of `48`.
  void textLeading(num leading) {
    _textLeading = leading.toDouble();
  }

  /// Sets the current font size.
  /// This size will be used in all subsequent calls to the [text()] function. Font size is measured in units of pixels.
  void textSize(num fontSize) {
    _fontSize = fontSize.toDouble();
    _textLeading = null;
  }

  /// Calculates and returns the width of any character or text string.
  double textWidth(String text) {
    final paragraphBuilder = ParagraphBuilder(ParagraphStyle(
      fontFamily: _fontName,
      fontSize: _fontSize,
      textAlign: _toFlutterAlign(_textAlignHorizontal),
    ))
      ..pushStyle(TextStyle(
        color: _paintingContext.fillPaint.color,
      ))
      ..addText(text);
    final paragraph = paragraphBuilder.build()
      ..layout(
        ParagraphConstraints(width: double.infinity),
      );
    return paragraph.maxIntrinsicWidth;
  }

  /// Returns ascent of the current font at its current size.
  /// This information is useful for determining the height of the font above the baseline.
  double textAscent() {
    final paragraphBuilder = ParagraphBuilder(ParagraphStyle(
      fontFamily: _fontName,
      fontSize: _fontSize,
      textAlign: _toFlutterAlign(_textAlignHorizontal),
    ))
      ..pushStyle(TextStyle(
        color: _paintingContext.fillPaint.color,
        height: _textLeading != null ? _textLeading! / _fontSize : null,
      ))
      ..addText("d");
    final paragraph = paragraphBuilder.build()
      ..layout(
        ParagraphConstraints(width: double.infinity),
      );

    return paragraph.computeLineMetrics().first.ascent;
  }

  /// Returns descent of the current font at its current size.
  /// This information is useful for determining the height of the font below the baseline.
  double textDescent() {
    final paragraphBuilder = ParagraphBuilder(ParagraphStyle(
      fontFamily: _fontName,
      fontSize: _fontSize,
      textAlign: _toFlutterAlign(_textAlignHorizontal),
    ))
      ..pushStyle(TextStyle(
        color: _paintingContext.fillPaint.color,
        height: _textLeading != null ? _textLeading! / _fontSize : null,
      ))
      ..addText("p");
    final paragraph = paragraphBuilder.build()
      ..layout(
        ParagraphConstraints(width: double.infinity),
      );

    return paragraph.computeLineMetrics().first.descent;
  }
}
