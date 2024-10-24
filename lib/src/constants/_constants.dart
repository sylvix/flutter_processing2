part of '../_core.dart';

const CORNER = 'CORNER';
const CORNERS = 'CORNERS';
const CENTER = 'CENTER';
const RADIUS = 'RADIUS';

const OPEN_STROKE_PIE_FILL = 'OPEN_STROKE_PIE_FILL';
const OPEN = 'OPEN';
const CHORD = 'CHORD';
const PIE = 'PIE';

const LEFT = 'LEFT';
const RIGHT = 'RIGHT';
const TOP = 'TOP';
const BOTTOM = 'BOTTOM';
const BASELINE = 'BASELINE';

// / / / / // ignore_for_file: non_constant_identifier_names
mixin SketchConstants on BaseSketch {
  /// [TWO_PI] is a mathematical constant with the value `6.2831855`.
  /// It is twice the ratio of the circumference of a circle to its diameter.
  /// It is useful in combination with the trigonometric functions [sin()] and [cos()].
  final TWO_PI = pi * 2;

  /// [PI] is a mathematical constant with the value `3.1415927`.
  /// It is the ratio of the circumference of a circle to its diameter.
  /// It is useful in combination with the trigonometric functions [sin()] and [cos()].
  final PI = pi;

  /// [HALF_PI] is a mathematical constant with the value `1.5707964`.
  /// It is half the ratio of the circumference of a circle to its diameter.
  /// It is useful in combination with the trigonometric functions [sin()] and [cos()]
  final HALF_PI = pi / 2;

  /// [QUARTER_PI] is a mathematical constant with the value `0.7853982`.
  /// It is one quarter the ratio of the circumference of a circle to its diameter.
  /// It is useful in combination with the trigonometric functions [sin()] and [cos()]
  final QUARTER_PI = pi / 4;

  /// [TAU] is a mathematical constant with the value `6.2831855`.
  /// It is the circle constant relating the circumference of a circle to its linear dimension,
  /// the ratio of the circumference of a circle to its radius.
  /// It is useful in combination with trigonometric functions such as [sin()] and [cos()].
  final TAU = pi * 2; // see https://tauday.com/tau-manifesto
}
