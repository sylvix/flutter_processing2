# `point()`

```dart
void point(num x, num y)
```

Draws a point, a coordinate in space at the dimension of one pixel.
The first parameter is the horizontal value for the point, and the second value is the vertical value for the point.

Use `stroke()` to set the color of a `point()`.

## Examples

```dart
size(400, 400);
noSmooth();
point(120, 80);
point(340, 80);
point(340, 300);
point(120, 300);
```

## Output

<img src="./_images/point_1.png" width="400" height="400" />