# `strokeWeight()`

```dart
void strokeWeight(num newWeight)
```

Sets the width of the stroke used for lines, points, and the border around shapes.
All widths are set in units of pixels.

## Examples

```dart
size(400, 400);
strokeWeight(4);  // Default
line(80, 80, 320, 80);
strokeWeight(16);  // Thicker
line(80, 160, 320, 160);
strokeWeight(40);  // Beastly
line(80, 280, 320, 280);
```

## Output

<img src="./_images/strokeWeight_1.png" width="400" height="400" />
