# `square()`

```dart
void square(num x, num y, num extent)
```

Draws a square to the screen. A square is a four-sided shape with every angle at ninety degrees and each side is the same length. By default, the first two parameters set the location of the upper-left corner, the third sets the width and height. The way these parameters are interpreted, however, may be changed with the `rectMode()` function.

`rectMode(CORNERS)` is ignored for `square()`.

## Examples

```dart
square(120, 100, 220);
```

## Output

<img src="./_images/square_1.png" width="400" height="400" />
