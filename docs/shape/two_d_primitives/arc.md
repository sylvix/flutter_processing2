# `arc()`

```dart
void arc(num a, num b, num c, num d, num start, num stop, [String mode = OPEN_STROKE_PIE_FILL])
```

Draws an arc to the screen. Arcs are drawn along the outer edge of an ellipse defined by the `a`, `b`, `c`, and `d` parameters. The origin of the arc's ellipse may be changed with the `ellipseMode()` function. Use the start and stop parameters to specify the angles (in radians) at which to draw the arc. The `start`/`stop` values must be in clockwise order.

There are three ways to draw an arc; the rendering technique used is defined by the optional seventh parameter. The three options are `PIE`, `OPEN`, and `CHORD`. The default mode is the `OPEN` stroke with a `PIE` fill.
