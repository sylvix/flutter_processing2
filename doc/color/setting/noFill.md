# `noFill()`

```dart
void noFill()
```

Disables filling geometry. If both `noStroke()` and `noFill()` are called, nothing will be drawn to the screen.

## Examples

```dart
size(400, 400);
float x1 = 80;
rect(60, 40, 220, 220);
noFill();
rect(120, 80, 220, 220);
```

## Output

<img src="./_images/noFill_1.png" width="400" height="400" />
