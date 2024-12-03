import 'dart:math' as math;
import 'dart:ui';

mixin SketchMathCalculations {
  num abs(num value) {
    return value.abs();
  }

  int ceil(num value) {
    return value.ceil();
  }

  num constrain(num value, num min, num max) {
    return value.clamp(min, max);
  }

  /// Calculates the distance between two points.
  num dist(num x1, num y1, num x2, num y2) {
    final p1 = Offset(x1.toDouble(), y1.toDouble());
    final p2 = Offset(x2.toDouble(), y2.toDouble());
    return (p2 - p1).distance;
  }

  num exp(num value) {
    return math.exp(value);
  }

  int floor(num value) {
    return value.floor();
  }

  /// Calculates a number between two numbers at a specific increment.
  /// The [percent] parameter is the amount to interpolate between the two values where 0.0 equal to the first point, 0.1 is very near the first point, 0.5 is half-way in between, etc.
  /// The [lerp] function is convenient for creating motion along a straight path and for drawing dotted lines.
  double lerp(num start, num end, double percent) {
    return lerpDouble(start, end, percent)!;
  }

  num log(num value) {
    return math.log(value);
  }

  num mag(int x, int y, [int z = 0]) {
    return math.sqrt(math.pow(x, 2) + math.pow(y, 2) + math.pow(z, 2));
  }

  /// Re-maps a number from one range to another.
  num map(num value, num domainMin, num domainMax, num rangeMin, num rangeMax) {
    return (value - domainMin) * (rangeMax - rangeMin) / (domainMax - domainMin) + rangeMin;
  }

  num max(num a, num b, [num? c]) {
    final max = math.max(a, b);
    return c != null ? math.max(max, c) : max;
  }

  num maxInList(List<num> list) {
    assert(list.isNotEmpty);
    return list.fold(list.first, (previousMax, newValue) => math.max(previousMax, newValue));
  }

  num min(num a, num b, [num? c]) {
    final min = math.min(a, b);
    return c != null ? math.min(min, c) : min;
  }

  num minInList(List<num> list) {
    assert(list.isNotEmpty);
    return list.fold(list.first, (previousMin, newValue) => math.min(previousMin, newValue));
  }

  num norm(num value, num start, num stop) {
    return map(value, start, stop, 0, 1);
  }

  num pow(num base, num exponent) {
    return math.pow(base, exponent);
  }

  int round(num value) {
    return value.round();
  }

  num sq(num value) {
    return value * value;
  }

  num sqrt(num value) {
    return math.sqrt(value);
  }
}
