# `mouseReleased()`

```dart
void mouseReleased()
```

The `mouseReleased()` function is called every time a mouse button is released.

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.

## Examples

```dart
// Drag (click and hold) your mouse across the
// image to change the value of the rectangle

int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void mouseDragged()
{
  value = value + 5;
  if (value > 255) {
    value = 0;
  }
}
```
