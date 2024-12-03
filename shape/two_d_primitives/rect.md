# `rect()`

```dart
void rect(num a, num b, num c, num d, [num? tl, num? tr, num? br, num? bl])
```

Draws a rectangle to the screen. A rectangle is a four-sided shape with every angle at ninety degrees. By default, the first two parameters set the location of the upper-left corner, the third sets the width, and the fourth sets the height. The way these parameters are interpreted, however, may be changed with the `rectMode()` function.

To draw a rounded rectangle, add a fifth parameter, which is used as the radius value for all four corners.

To use a different radius value for each corner, include eight parameters. When using eight parameters, the latter four set the radius of the arc at each corner separately, starting with the top-left corner and moving clockwise around the rectangle.

## Example 1

```dart
size(400, 400);
rect(120, 80, 220, 220);
```

## Output 1

<img src="./_images/rect_1.png" width="400" height="400" />

## Example 2

```dart
size(400, 400);
rect(120, 80, 220, 220, 28);
```

## Output 2

<img src="./_images/rect_2.png" width="400" height="400" />

## Example 3

```dart
size(400, 400);
rect(120, 80, 220, 220, 12, 24, 48, 72);
```

## Output 3

<img src="./_images/rect_3.png" width="400" height="400" />
