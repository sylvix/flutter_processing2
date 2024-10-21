# `point()`

```dart
void point(num x, num y)
```

Draws a point, a coordinate in space at the dimension of one pixel.
The first parameter is the horizontal value for the point, and the the second value is the vertical value for the point.

Use `stroke()` to set the color of a `point()`.

## Example 1

```dart
size(400, 400);
noSmooth();
point(120, 80);
point(340, 80);
point(340, 300);
point(120, 300);
```

## Output 1

<img src="/_images/point_1.png" width="400" height="400" />

## Example 2

```dart
size(400, 400, P3D);
noSmooth();
point(120, 80, -200);
point(340, 80, -200);
point(340, 300, -200);
point(120, 300, -200);
```

## Output 2

<img src="/_images/point_2.png" width="400" height="400" />
